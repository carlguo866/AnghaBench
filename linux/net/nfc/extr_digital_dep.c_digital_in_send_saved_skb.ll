; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_send_saved_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_send_saved_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32, i32 }
%struct.digital_data_exch = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@digital_in_recv_dep_res = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, %struct.digital_data_exch*)* @digital_in_send_saved_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digital_in_send_saved_skb(%struct.nfc_digital_dev* %0, %struct.digital_data_exch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca %struct.digital_data_exch*, align 8
  %6 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store %struct.digital_data_exch* %1, %struct.digital_data_exch** %5, align 8
  %7 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %8 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %16 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @skb_get(i32 %17)
  %19 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %20 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %21 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %24 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @digital_in_recv_dep_res, align 4
  %27 = load %struct.digital_data_exch*, %struct.digital_data_exch** %5, align 8
  %28 = call i32 @digital_in_send_cmd(%struct.nfc_digital_dev* %19, i32 %22, i32 %25, i32 %26, %struct.digital_data_exch* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %14
  %32 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %33 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kfree_skb(i32 %34)
  br label %36

36:                                               ; preds = %31, %14
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @skb_get(i32) #1

declare dso_local i32 @digital_in_send_cmd(%struct.nfc_digital_dev*, i32, i32, i32, %struct.digital_data_exch*) #1

declare dso_local i32 @kfree_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
