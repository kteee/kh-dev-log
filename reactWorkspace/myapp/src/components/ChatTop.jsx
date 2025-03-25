function ChatTop({adImg}){
    return(
        <>
            <div class="chat-top">
                <div id="chatting-text">채팅</div>
                <div><img src={adImg} width="100%" height="50px" /></div>
            </div>
        </>
    );
}

export default ChatTop;