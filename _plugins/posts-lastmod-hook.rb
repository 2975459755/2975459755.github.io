#!/usr/bin/env ruby
#
# Check for changed posts

Jekyll::Hooks.register :posts, :post_init do |post|

  # 1. 将绝对路径转换为相对于当前工作目录的相对路径，兼容安卓沙盒
  relative_path = post.path.sub(Dir.pwd + "/", "")

  begin
    # 2. 使用相对路径，并将 stderr 重定向以屏蔽某些环境下的警告
    commit_num = `git rev-list --count HEAD "#{relative_path}" 2>/dev/null`

    # 如果成功获取且大于 1，说明被修改过
    if commit_num.to_i > 1
      lastmod_date = `git log -1 --pretty="%ad" --date=iso "#{relative_path}" 2>/dev/null`
      post.data['last_modified_at'] = lastmod_date.strip
    end
  rescue => e
    # 3. 如果安卓的 JekyllEx 依然无法调用 Git，则完美降级：
    # 直接读取文件在平板上的物理修改时间，保证不报错且功能可用
    post.data['last_modified_at'] = File.mtime(post.path)
  end

end