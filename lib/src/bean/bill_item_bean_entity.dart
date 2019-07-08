import 'package:json_annotation/json_annotation.dart';

///账单列表
@JsonSerializable()
class BillItemBeanEntity {
  @JsonKey(name: 'repayDate')
  String repayDate;
  String orderNo;
  int amount;
  int period;
  dynamic lateFee;
  String logoUrl;
  dynamic gameFee;
  int totalStages;
  String productCode;
  String productName;
  List<BillItemBeanSmallBillDetailDtoList> smallBillDetailDtoList;
  int needRepayAmount;
  String repayCycleType;
  int currentStages;
  bool overDueFlag;
  int overDueDays;
  dynamic waitForRepayCount;
  String status;

  BillItemBeanEntity(
      {this.repayDate,
      this.orderNo,
      this.amount,
      this.period,
      this.lateFee,
      this.logoUrl,
      this.gameFee,
      this.totalStages,
      this.productCode,
      this.productName,
      this.smallBillDetailDtoList,
      this.needRepayAmount,
      this.repayCycleType,
      this.currentStages,
      this.overDueFlag,
      this.overDueDays,
      this.waitForRepayCount,
      this.status});

  BillItemBeanEntity.fromJson(Map<String, dynamic> json) {
    repayDate = json['repay_date'];
    orderNo = json['order_no'];
    amount = json['amount'];
    period = json['period'];
    lateFee = json['late_fee'];
    logoUrl = json['logo_url'];
    gameFee = json['game_fee'];
    totalStages = json['total_stages'];
    productCode = json['product_code'];
    productName = json['product_name'];
    if (json['small_bill_detail_dto_list'] != null) {
      smallBillDetailDtoList = new List<BillItemBeanSmallBillDetailDtoList>();
      (json['small_bill_detail_dto_list'] as List).forEach((v) {
        smallBillDetailDtoList
            .add(new BillItemBeanSmallBillDetailDtoList.fromJson(v));
      });
    }
    needRepayAmount = json['need_repay_amount'];
    repayCycleType = json['repay_cycle_type'];
    currentStages = json['current_stages'];
    overDueFlag = json['over_due_flag'];
    overDueDays = json['over_due_days'];
    waitForRepayCount = json['wait_for_repay_count'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['repay_date'] = this.repayDate;
    data['order_no'] = this.orderNo;
    data['amount'] = this.amount;
    data['period'] = this.period;
    data['late_fee'] = this.lateFee;
    data['logo_url'] = this.logoUrl;
    data['game_fee'] = this.gameFee;
    data['total_stages'] = this.totalStages;
    data['product_code'] = this.productCode;
    data['product_name'] = this.productName;
    if (this.smallBillDetailDtoList != null) {
      data['small_bill_detail_dto_list'] =
          this.smallBillDetailDtoList.map((v) => v.toJson()).toList();
    }
    data['need_repay_amount'] = this.needRepayAmount;
    data['repay_cycle_type'] = this.repayCycleType;
    data['current_stages'] = this.currentStages;
    data['over_due_flag'] = this.overDueFlag;
    data['over_due_days'] = this.overDueDays;
    data['wait_for_repay_count'] = this.waitForRepayCount;
    data['status'] = this.status;
    return data;
  }
}

class BillItemBeanSmallBillDetailDtoList {
  String repayDate;
  String loanDate;
  int amount;
  int lateFee;
  int gameFee;
  String stagesSeqNo;
  int principal;
  int interest;
  bool overDueFlag;
  int overDueDays;
  int currentStages;
  dynamic cancelFlag;
  String status;

  BillItemBeanSmallBillDetailDtoList(
      {this.repayDate,
      this.loanDate,
      this.amount,
      this.lateFee,
      this.gameFee,
      this.stagesSeqNo,
      this.principal,
      this.interest,
      this.overDueFlag,
      this.overDueDays,
      this.currentStages,
      this.cancelFlag,
      this.status});

  BillItemBeanSmallBillDetailDtoList.fromJson(Map<String, dynamic> json) {
    repayDate = json['repay_date'];
    loanDate = json['loan_date'];
    amount = json['amount'];
    lateFee = json['late_fee'];
    gameFee = json['game_fee'];
    stagesSeqNo = json['stages_seq_no'];
    principal = json['principal'];
    interest = json['interest'];
    overDueFlag = json['over_due_flag'];
    overDueDays = json['over_due_days'];
    currentStages = json['current_stages'];
    cancelFlag = json['cancel_flag'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['repay_date'] = this.repayDate;
    data['loan_date'] = this.loanDate;
    data['amount'] = this.amount;
    data['late_fee'] = this.lateFee;
    data['game_fee'] = this.gameFee;
    data['stages_seq_no'] = this.stagesSeqNo;
    data['principal'] = this.principal;
    data['interest'] = this.interest;
    data['over_due_flag'] = this.overDueFlag;
    data['over_due_days'] = this.overDueDays;
    data['current_stages'] = this.currentStages;
    data['cancel_flag'] = this.cancelFlag;
    data['status'] = this.status;
    return data;
  }
}
