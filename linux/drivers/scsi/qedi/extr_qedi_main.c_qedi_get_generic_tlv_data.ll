; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_generic_tlv_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_generic_tlv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_generic_tlvs = type { i32* }
%struct.qedi_ctx = type { i32 }

@QEDI_LOG_EVT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"dev is NULL so ignoring get_generic_tlv_data request.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.qed_generic_tlvs*)* @qedi_get_generic_tlv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_get_generic_tlv_data(i8* %0, %struct.qed_generic_tlvs* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qed_generic_tlvs*, align 8
  %5 = alloca %struct.qedi_ctx*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.qed_generic_tlvs* %1, %struct.qed_generic_tlvs** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @QEDI_LOG_EVT, align 4
  %10 = call i32 @QEDI_INFO(i32* null, i32 %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %25

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.qedi_ctx*
  store %struct.qedi_ctx* %13, %struct.qedi_ctx** %5, align 8
  %14 = load %struct.qed_generic_tlvs*, %struct.qed_generic_tlvs** %4, align 8
  %15 = call i32 @memset(%struct.qed_generic_tlvs* %14, i32 0, i32 8)
  %16 = load %struct.qed_generic_tlvs*, %struct.qed_generic_tlvs** %4, align 8
  %17 = getelementptr inbounds %struct.qed_generic_tlvs, %struct.qed_generic_tlvs* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ether_addr_copy(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*) #1

declare dso_local i32 @memset(%struct.qed_generic_tlvs*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
