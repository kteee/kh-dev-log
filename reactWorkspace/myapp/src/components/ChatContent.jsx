function ChatContent({profileImg, name, content, date}){
    return(
        <>
            <div class="chat-content">
                <div><img src={profileImg} width="100%" height="100%" /></div>
                <div>
                    <div id="name">{name}</div>
                    <div id="content">{content}</div>
                </div>
                <div>{date}</div>
            </div>
        </>
    );
}

export default ChatContent;