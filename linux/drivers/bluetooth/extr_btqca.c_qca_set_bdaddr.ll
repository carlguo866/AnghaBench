; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqca.c_qca_set_bdaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqca.c_qca_set_bdaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }

@EDL_WRITE_BD_ADDR_OPCODE = common dso_local global i32 0, align 4
@HCI_EV_VENDOR = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"QCA Change address cmd failed (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qca_set_bdaddr(%struct.hci_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %9 = load i32, i32* @EDL_WRITE_BD_ADDR_OPCODE, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @HCI_EV_VENDOR, align 4
  %12 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %13 = call %struct.sk_buff* @__hci_cmd_sync_ev(%struct.hci_dev* %8, i32 %9, i32 6, i32* %10, i32 %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i64 @IS_ERR(%struct.sk_buff* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.sk_buff* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @bt_dev_err(%struct.hci_dev* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 @kfree_skb(%struct.sk_buff* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.sk_buff* @__hci_cmd_sync_ev(%struct.hci_dev*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
