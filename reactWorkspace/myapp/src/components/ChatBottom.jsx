import ChatBottomIcon from "./ChatBottomIcon";

function ChatBottom(){
    return(
        <>
            <div class="chat-bottom">
                <ChatBottomIcon iconImg="https://img.icons8.com/?size=100&id=Cssf43cjx2fu&format=png&color=000000" iconText="친구"></ChatBottomIcon>
                <ChatBottomIcon iconImg="https://img.icons8.com/?size=100&id=22050&format=png&color=000000" iconText="채팅"></ChatBottomIcon>
                <ChatBottomIcon iconImg="https://img.icons8.com/?size=100&id=7859&format=png&color=000000" iconText="오픈채팅"></ChatBottomIcon>
                <ChatBottomIcon iconImg="https://img.icons8.com/?size=100&id=15893&format=png&color=000000" iconText="쇼핑"></ChatBottomIcon>
                <ChatBottomIcon iconImg="https://img.icons8.com/?size=100&id=16074&format=png&color=000000" iconText="더보기"></ChatBottomIcon>
            </div>
        </>
    );
}

export default ChatBottom;