; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_update_datapduinorder_no.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_update_datapduinorder_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { %struct.iscsi_pdu* }
%struct.iscsi_pdu = type { i32, i32 }

@ISCSI_PDU_RECEIVED_OK = common dso_local global i8* null, align 8
@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4
@DATAOUT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i32, i32)* @iscsit_dataout_update_datapduinorder_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_dataout_update_datapduinorder_no(%struct.iscsi_cmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_pdu*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 0
  %12 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  store %struct.iscsi_pdu* %12, %struct.iscsi_pdu** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %9, align 8
  %15 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %9, align 8
  %17 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %34 [
    i32 129, label %19
    i32 130, label %24
    i32 128, label %29
  ]

19:                                               ; preds = %3
  %20 = load i8*, i8** @ISCSI_PDU_RECEIVED_OK, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %9, align 8
  %23 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %36

24:                                               ; preds = %3
  %25 = load i8*, i8** @ISCSI_PDU_RECEIVED_OK, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %9, align 8
  %28 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %36

29:                                               ; preds = %3
  %30 = load i8*, i8** @ISCSI_PDU_RECEIVED_OK, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %9, align 8
  %33 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %35, i32* %4, align 4
  br label %51

36:                                               ; preds = %29, %24, %19
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %41 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %9, align 8
  %42 = call i32 @iscsit_dataout_datapduinorder_no_fbit(%struct.iscsi_cmd* %40, %struct.iscsi_pdu* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %51

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, i32* @DATAOUT_NORMAL, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %46, %34
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @iscsit_dataout_datapduinorder_no_fbit(%struct.iscsi_cmd*, %struct.iscsi_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
