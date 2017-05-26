class CommentController < ApplicationController
    
  def reply_write
    reply = Reply.new
    reply.content = params[:content]
    reply.post_id = params[:post_id]
    reply.save
    redirect_to "/home/list"
  end
  
  # 댓글이 수정되는게 보여지는 페이지
  def reply_update_view
    
    @one_reply = Reply.find(params[:id])
  end
  
  # 댓글이 수정되는 것을 새롭게 저장될 곳
  def reply_real
    @one_reply = Reply.find(params[:id])
    # 여기부터는 create 랑 똑같다.
    @one_reply.content = params[:content]
    @one_reply.save
    redirect_to "/home/list"
  end
  
  def reply_destroy
    @one_reply = Reply.find(params[:id])
    @one_reply.destroy
    redirect_to "/home/list"
  end
    
end
