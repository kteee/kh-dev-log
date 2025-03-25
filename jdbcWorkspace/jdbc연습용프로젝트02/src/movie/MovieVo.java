package movie;

public class MovieVo {
	private String no;
	private String title;
	private String genre;
	private String showDate;
	private String showStatus;
	private String seatCount;
	private String reservationCount;
	private String enrollDate;
	private String modifyDate;
	private String delYn;
	private String remainSeat;
	private String reservableYn;
	
	public MovieVo(String no, String title, String genre, String showDate, String showStatus, String seatCount,
			String reservationCount, String enrollDate, String modifyDate, String delYn, String remainSeat,
			String reservableYn) {
		super();
		this.no = no;
		this.title = title;
		this.genre = genre;
		this.showDate = showDate;
		this.showStatus = showStatus;
		this.seatCount = seatCount;
		this.reservationCount = reservationCount;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.delYn = delYn;
		this.remainSeat = remainSeat;
		this.reservableYn = reservableYn;
	}

	public MovieVo() {
		
	}

	@Override
	public String toString() {
		return "MovieVo [no=" + no + ", title=" + title + ", genre=" + genre + ", showDate=" + showDate
				+ ", showStatus=" + showStatus + ", seatCount=" + seatCount + ", reservationCount=" + reservationCount
				+ ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", delYn=" + delYn + ", remainSeat="
				+ remainSeat + ", reservableYn=" + reservableYn + "]";
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getShowDate() {
		return showDate;
	}

	public void setShowDate(String showDate) {
		this.showDate = showDate;
	}

	public String getShowStatus() {
		return showStatus;
	}

	public void setShowStatus(String showStatus) {
		this.showStatus = showStatus;
	}

	public String getSeatCount() {
		return seatCount;
	}

	public void setSeatCount(String seatCount) {
		this.seatCount = seatCount;
	}

	public String getReservationCount() {
		return reservationCount;
	}

	public void setReservationCount(String reservationCount) {
		this.reservationCount = reservationCount;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getDelYn() {
		return delYn;
	}

	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

	public String getRemainSeat() {
		return remainSeat;
	}

	public void setRemainSeat(String remainSeat) {
		this.remainSeat = remainSeat;
	}

	public String getReservableYn() {
		return reservableYn;
	}

	public void setReservableYn(String reservableYn) {
		this.reservableYn = reservableYn;
	}
	
}