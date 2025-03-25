function ChatBottomIcon({iconImg, iconText}){
    return(
        <>
            <div class="chat-bottom-icon">
                <div><img src={iconImg} width="25px" height="25px" /></div>
                <div>{iconText}</div>
            </div>
        </>
    );
}

export default ChatBottomIcon;