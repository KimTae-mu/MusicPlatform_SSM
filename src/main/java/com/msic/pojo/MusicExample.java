package com.msic.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MusicExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MusicExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andMsicIdIsNull() {
            addCriterion("msic_id is null");
            return (Criteria) this;
        }

        public Criteria andMsicIdIsNotNull() {
            addCriterion("msic_id is not null");
            return (Criteria) this;
        }

        public Criteria andMsicIdEqualTo(Integer value) {
            addCriterion("msic_id =", value, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdNotEqualTo(Integer value) {
            addCriterion("msic_id <>", value, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdGreaterThan(Integer value) {
            addCriterion("msic_id >", value, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("msic_id >=", value, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdLessThan(Integer value) {
            addCriterion("msic_id <", value, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdLessThanOrEqualTo(Integer value) {
            addCriterion("msic_id <=", value, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdIn(List<Integer> values) {
            addCriterion("msic_id in", values, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdNotIn(List<Integer> values) {
            addCriterion("msic_id not in", values, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdBetween(Integer value1, Integer value2) {
            addCriterion("msic_id between", value1, value2, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicIdNotBetween(Integer value1, Integer value2) {
            addCriterion("msic_id not between", value1, value2, "msicId");
            return (Criteria) this;
        }

        public Criteria andMsicNameIsNull() {
            addCriterion("msic_name is null");
            return (Criteria) this;
        }

        public Criteria andMsicNameIsNotNull() {
            addCriterion("msic_name is not null");
            return (Criteria) this;
        }

        public Criteria andMsicNameEqualTo(String value) {
            addCriterion("msic_name =", value, "msicName");
            return (Criteria) this;
        }

        public Criteria andMsicNameNotEqualTo(String value) {
            addCriterion("msic_name <>", value, "msicName");
            return (Criteria) this;
        }

        public Criteria andMsicNameGreaterThan(String value) {
            addCriterion("msic_name >", value, "msicName");
            return (Criteria) this;
        }

        public Criteria andMsicNameGreaterThanOrEqualTo(String value) {
            addCriterion("msic_name >=", value, "msicName");
            return (Criteria) this;
        }

        public Criteria andMsicNameLessThan(String value) {
            addCriterion("msic_name <", value, "msicName");
            return (Criteria) this;
        }

        public Criteria andMsicNameLessThanOrEqualTo(String value) {
            addCriterion("msic_name <=", value, "msicName");
            return (Criteria) this;
        }

        public Criteria andMsicNameLike(String value) {
            addCriterion("msic_name like", value, "msicName");
            return (Criteria) this;
        }

        public Criteria andMsicNameNotLike(String value) {
            addCriterion("msic_name not like", value, "msicName");
            return (Criteria) this;
        }

        public Criteria andMsicNameIn(List<String> values) {
            addCriterion("msic_name in", values, "msicName");
            return (Criteria) this;
        }

        public Criteria andMsicNameNotIn(List<String> values) {
            addCriterion("msic_name not in", values, "msicName");
            return (Criteria) this;
        }

        public Criteria andMsicNameBetween(String value1, String value2) {
            addCriterion("msic_name between", value1, value2, "msicName");
            return (Criteria) this;
        }

        public Criteria andMsicNameNotBetween(String value1, String value2) {
            addCriterion("msic_name not between", value1, value2, "msicName");
            return (Criteria) this;
        }

        public Criteria andMsicSingerIsNull() {
            addCriterion("msic_singer is null");
            return (Criteria) this;
        }

        public Criteria andMsicSingerIsNotNull() {
            addCriterion("msic_singer is not null");
            return (Criteria) this;
        }

        public Criteria andMsicSingerEqualTo(String value) {
            addCriterion("msic_singer =", value, "msicSinger");
            return (Criteria) this;
        }

        public Criteria andMsicSingerNotEqualTo(String value) {
            addCriterion("msic_singer <>", value, "msicSinger");
            return (Criteria) this;
        }

        public Criteria andMsicSingerGreaterThan(String value) {
            addCriterion("msic_singer >", value, "msicSinger");
            return (Criteria) this;
        }

        public Criteria andMsicSingerGreaterThanOrEqualTo(String value) {
            addCriterion("msic_singer >=", value, "msicSinger");
            return (Criteria) this;
        }

        public Criteria andMsicSingerLessThan(String value) {
            addCriterion("msic_singer <", value, "msicSinger");
            return (Criteria) this;
        }

        public Criteria andMsicSingerLessThanOrEqualTo(String value) {
            addCriterion("msic_singer <=", value, "msicSinger");
            return (Criteria) this;
        }

        public Criteria andMsicSingerLike(String value) {
            addCriterion("msic_singer like", value, "msicSinger");
            return (Criteria) this;
        }

        public Criteria andMsicSingerNotLike(String value) {
            addCriterion("msic_singer not like", value, "msicSinger");
            return (Criteria) this;
        }

        public Criteria andMsicSingerIn(List<String> values) {
            addCriterion("msic_singer in", values, "msicSinger");
            return (Criteria) this;
        }

        public Criteria andMsicSingerNotIn(List<String> values) {
            addCriterion("msic_singer not in", values, "msicSinger");
            return (Criteria) this;
        }

        public Criteria andMsicSingerBetween(String value1, String value2) {
            addCriterion("msic_singer between", value1, value2, "msicSinger");
            return (Criteria) this;
        }

        public Criteria andMsicSingerNotBetween(String value1, String value2) {
            addCriterion("msic_singer not between", value1, value2, "msicSinger");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumIsNull() {
            addCriterion("msic_album is null");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumIsNotNull() {
            addCriterion("msic_album is not null");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumEqualTo(String value) {
            addCriterion("msic_album =", value, "msicAlbum");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumNotEqualTo(String value) {
            addCriterion("msic_album <>", value, "msicAlbum");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumGreaterThan(String value) {
            addCriterion("msic_album >", value, "msicAlbum");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumGreaterThanOrEqualTo(String value) {
            addCriterion("msic_album >=", value, "msicAlbum");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumLessThan(String value) {
            addCriterion("msic_album <", value, "msicAlbum");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumLessThanOrEqualTo(String value) {
            addCriterion("msic_album <=", value, "msicAlbum");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumLike(String value) {
            addCriterion("msic_album like", value, "msicAlbum");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumNotLike(String value) {
            addCriterion("msic_album not like", value, "msicAlbum");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumIn(List<String> values) {
            addCriterion("msic_album in", values, "msicAlbum");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumNotIn(List<String> values) {
            addCriterion("msic_album not in", values, "msicAlbum");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumBetween(String value1, String value2) {
            addCriterion("msic_album between", value1, value2, "msicAlbum");
            return (Criteria) this;
        }

        public Criteria andMsicAlbumNotBetween(String value1, String value2) {
            addCriterion("msic_album not between", value1, value2, "msicAlbum");
            return (Criteria) this;
        }

        public Criteria andMsicPicIsNull() {
            addCriterion("msic_pic is null");
            return (Criteria) this;
        }

        public Criteria andMsicPicIsNotNull() {
            addCriterion("msic_pic is not null");
            return (Criteria) this;
        }

        public Criteria andMsicPicEqualTo(String value) {
            addCriterion("msic_pic =", value, "msicPic");
            return (Criteria) this;
        }

        public Criteria andMsicPicNotEqualTo(String value) {
            addCriterion("msic_pic <>", value, "msicPic");
            return (Criteria) this;
        }

        public Criteria andMsicPicGreaterThan(String value) {
            addCriterion("msic_pic >", value, "msicPic");
            return (Criteria) this;
        }

        public Criteria andMsicPicGreaterThanOrEqualTo(String value) {
            addCriterion("msic_pic >=", value, "msicPic");
            return (Criteria) this;
        }

        public Criteria andMsicPicLessThan(String value) {
            addCriterion("msic_pic <", value, "msicPic");
            return (Criteria) this;
        }

        public Criteria andMsicPicLessThanOrEqualTo(String value) {
            addCriterion("msic_pic <=", value, "msicPic");
            return (Criteria) this;
        }

        public Criteria andMsicPicLike(String value) {
            addCriterion("msic_pic like", value, "msicPic");
            return (Criteria) this;
        }

        public Criteria andMsicPicNotLike(String value) {
            addCriterion("msic_pic not like", value, "msicPic");
            return (Criteria) this;
        }

        public Criteria andMsicPicIn(List<String> values) {
            addCriterion("msic_pic in", values, "msicPic");
            return (Criteria) this;
        }

        public Criteria andMsicPicNotIn(List<String> values) {
            addCriterion("msic_pic not in", values, "msicPic");
            return (Criteria) this;
        }

        public Criteria andMsicPicBetween(String value1, String value2) {
            addCriterion("msic_pic between", value1, value2, "msicPic");
            return (Criteria) this;
        }

        public Criteria andMsicPicNotBetween(String value1, String value2) {
            addCriterion("msic_pic not between", value1, value2, "msicPic");
            return (Criteria) this;
        }

        public Criteria andMsicLrcIsNull() {
            addCriterion("msic_lrc is null");
            return (Criteria) this;
        }

        public Criteria andMsicLrcIsNotNull() {
            addCriterion("msic_lrc is not null");
            return (Criteria) this;
        }

        public Criteria andMsicLrcEqualTo(String value) {
            addCriterion("msic_lrc =", value, "msicLrc");
            return (Criteria) this;
        }

        public Criteria andMsicLrcNotEqualTo(String value) {
            addCriterion("msic_lrc <>", value, "msicLrc");
            return (Criteria) this;
        }

        public Criteria andMsicLrcGreaterThan(String value) {
            addCriterion("msic_lrc >", value, "msicLrc");
            return (Criteria) this;
        }

        public Criteria andMsicLrcGreaterThanOrEqualTo(String value) {
            addCriterion("msic_lrc >=", value, "msicLrc");
            return (Criteria) this;
        }

        public Criteria andMsicLrcLessThan(String value) {
            addCriterion("msic_lrc <", value, "msicLrc");
            return (Criteria) this;
        }

        public Criteria andMsicLrcLessThanOrEqualTo(String value) {
            addCriterion("msic_lrc <=", value, "msicLrc");
            return (Criteria) this;
        }

        public Criteria andMsicLrcLike(String value) {
            addCriterion("msic_lrc like", value, "msicLrc");
            return (Criteria) this;
        }

        public Criteria andMsicLrcNotLike(String value) {
            addCriterion("msic_lrc not like", value, "msicLrc");
            return (Criteria) this;
        }

        public Criteria andMsicLrcIn(List<String> values) {
            addCriterion("msic_lrc in", values, "msicLrc");
            return (Criteria) this;
        }

        public Criteria andMsicLrcNotIn(List<String> values) {
            addCriterion("msic_lrc not in", values, "msicLrc");
            return (Criteria) this;
        }

        public Criteria andMsicLrcBetween(String value1, String value2) {
            addCriterion("msic_lrc between", value1, value2, "msicLrc");
            return (Criteria) this;
        }

        public Criteria andMsicLrcNotBetween(String value1, String value2) {
            addCriterion("msic_lrc not between", value1, value2, "msicLrc");
            return (Criteria) this;
        }

        public Criteria andMsicLocationIsNull() {
            addCriterion("msic_location is null");
            return (Criteria) this;
        }

        public Criteria andMsicLocationIsNotNull() {
            addCriterion("msic_location is not null");
            return (Criteria) this;
        }

        public Criteria andMsicLocationEqualTo(String value) {
            addCriterion("msic_location =", value, "msicLocation");
            return (Criteria) this;
        }

        public Criteria andMsicLocationNotEqualTo(String value) {
            addCriterion("msic_location <>", value, "msicLocation");
            return (Criteria) this;
        }

        public Criteria andMsicLocationGreaterThan(String value) {
            addCriterion("msic_location >", value, "msicLocation");
            return (Criteria) this;
        }

        public Criteria andMsicLocationGreaterThanOrEqualTo(String value) {
            addCriterion("msic_location >=", value, "msicLocation");
            return (Criteria) this;
        }

        public Criteria andMsicLocationLessThan(String value) {
            addCriterion("msic_location <", value, "msicLocation");
            return (Criteria) this;
        }

        public Criteria andMsicLocationLessThanOrEqualTo(String value) {
            addCriterion("msic_location <=", value, "msicLocation");
            return (Criteria) this;
        }

        public Criteria andMsicLocationLike(String value) {
            addCriterion("msic_location like", value, "msicLocation");
            return (Criteria) this;
        }

        public Criteria andMsicLocationNotLike(String value) {
            addCriterion("msic_location not like", value, "msicLocation");
            return (Criteria) this;
        }

        public Criteria andMsicLocationIn(List<String> values) {
            addCriterion("msic_location in", values, "msicLocation");
            return (Criteria) this;
        }

        public Criteria andMsicLocationNotIn(List<String> values) {
            addCriterion("msic_location not in", values, "msicLocation");
            return (Criteria) this;
        }

        public Criteria andMsicLocationBetween(String value1, String value2) {
            addCriterion("msic_location between", value1, value2, "msicLocation");
            return (Criteria) this;
        }

        public Criteria andMsicLocationNotBetween(String value1, String value2) {
            addCriterion("msic_location not between", value1, value2, "msicLocation");
            return (Criteria) this;
        }

        public Criteria andMsicDateIsNull() {
            addCriterion("msic_date is null");
            return (Criteria) this;
        }

        public Criteria andMsicDateIsNotNull() {
            addCriterion("msic_date is not null");
            return (Criteria) this;
        }

        public Criteria andMsicDateEqualTo(Date value) {
            addCriterion("msic_date =", value, "msicDate");
            return (Criteria) this;
        }

        public Criteria andMsicDateNotEqualTo(Date value) {
            addCriterion("msic_date <>", value, "msicDate");
            return (Criteria) this;
        }

        public Criteria andMsicDateGreaterThan(Date value) {
            addCriterion("msic_date >", value, "msicDate");
            return (Criteria) this;
        }

        public Criteria andMsicDateGreaterThanOrEqualTo(Date value) {
            addCriterion("msic_date >=", value, "msicDate");
            return (Criteria) this;
        }

        public Criteria andMsicDateLessThan(Date value) {
            addCriterion("msic_date <", value, "msicDate");
            return (Criteria) this;
        }

        public Criteria andMsicDateLessThanOrEqualTo(Date value) {
            addCriterion("msic_date <=", value, "msicDate");
            return (Criteria) this;
        }

        public Criteria andMsicDateIn(List<Date> values) {
            addCriterion("msic_date in", values, "msicDate");
            return (Criteria) this;
        }

        public Criteria andMsicDateNotIn(List<Date> values) {
            addCriterion("msic_date not in", values, "msicDate");
            return (Criteria) this;
        }

        public Criteria andMsicDateBetween(Date value1, Date value2) {
            addCriterion("msic_date between", value1, value2, "msicDate");
            return (Criteria) this;
        }

        public Criteria andMsicDateNotBetween(Date value1, Date value2) {
            addCriterion("msic_date not between", value1, value2, "msicDate");
            return (Criteria) this;
        }

        public Criteria andMsicTimesIsNull() {
            addCriterion("msic_times is null");
            return (Criteria) this;
        }

        public Criteria andMsicTimesIsNotNull() {
            addCriterion("msic_times is not null");
            return (Criteria) this;
        }

        public Criteria andMsicTimesEqualTo(Integer value) {
            addCriterion("msic_times =", value, "msicTimes");
            return (Criteria) this;
        }

        public Criteria andMsicTimesNotEqualTo(Integer value) {
            addCriterion("msic_times <>", value, "msicTimes");
            return (Criteria) this;
        }

        public Criteria andMsicTimesGreaterThan(Integer value) {
            addCriterion("msic_times >", value, "msicTimes");
            return (Criteria) this;
        }

        public Criteria andMsicTimesGreaterThanOrEqualTo(Integer value) {
            addCriterion("msic_times >=", value, "msicTimes");
            return (Criteria) this;
        }

        public Criteria andMsicTimesLessThan(Integer value) {
            addCriterion("msic_times <", value, "msicTimes");
            return (Criteria) this;
        }

        public Criteria andMsicTimesLessThanOrEqualTo(Integer value) {
            addCriterion("msic_times <=", value, "msicTimes");
            return (Criteria) this;
        }

        public Criteria andMsicTimesIn(List<Integer> values) {
            addCriterion("msic_times in", values, "msicTimes");
            return (Criteria) this;
        }

        public Criteria andMsicTimesNotIn(List<Integer> values) {
            addCriterion("msic_times not in", values, "msicTimes");
            return (Criteria) this;
        }

        public Criteria andMsicTimesBetween(Integer value1, Integer value2) {
            addCriterion("msic_times between", value1, value2, "msicTimes");
            return (Criteria) this;
        }

        public Criteria andMsicTimesNotBetween(Integer value1, Integer value2) {
            addCriterion("msic_times not between", value1, value2, "msicTimes");
            return (Criteria) this;
        }

        public Criteria andExistIsNull() {
            addCriterion("exist is null");
            return (Criteria) this;
        }

        public Criteria andExistIsNotNull() {
            addCriterion("exist is not null");
            return (Criteria) this;
        }

        public Criteria andExistEqualTo(Integer value) {
            addCriterion("exist =", value, "exist");
            return (Criteria) this;
        }

        public Criteria andExistNotEqualTo(Integer value) {
            addCriterion("exist <>", value, "exist");
            return (Criteria) this;
        }

        public Criteria andExistGreaterThan(Integer value) {
            addCriterion("exist >", value, "exist");
            return (Criteria) this;
        }

        public Criteria andExistGreaterThanOrEqualTo(Integer value) {
            addCriterion("exist >=", value, "exist");
            return (Criteria) this;
        }

        public Criteria andExistLessThan(Integer value) {
            addCriterion("exist <", value, "exist");
            return (Criteria) this;
        }

        public Criteria andExistLessThanOrEqualTo(Integer value) {
            addCriterion("exist <=", value, "exist");
            return (Criteria) this;
        }

        public Criteria andExistIn(List<Integer> values) {
            addCriterion("exist in", values, "exist");
            return (Criteria) this;
        }

        public Criteria andExistNotIn(List<Integer> values) {
            addCriterion("exist not in", values, "exist");
            return (Criteria) this;
        }

        public Criteria andExistBetween(Integer value1, Integer value2) {
            addCriterion("exist between", value1, value2, "exist");
            return (Criteria) this;
        }

        public Criteria andExistNotBetween(Integer value1, Integer value2) {
            addCriterion("exist not between", value1, value2, "exist");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}