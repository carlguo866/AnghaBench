; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_mfu_assert_dump_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_mfu_assert_dump_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_mfu_assert_dump_notif = type { i64, i32, i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"MFUART assert id 0x%x occurred\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"MFUART assert dump, dword %u: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_mfu_assert_dump_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_mfu_assert_dump_notif*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %10 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %11 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %10)
  store %struct.iwl_rx_packet* %11, %struct.iwl_rx_packet** %5, align 8
  %12 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.iwl_mfu_assert_dump_notif*
  store %struct.iwl_mfu_assert_dump_notif* %16, %struct.iwl_mfu_assert_dump_notif** %6, align 8
  %17 = load %struct.iwl_mfu_assert_dump_notif*, %struct.iwl_mfu_assert_dump_notif** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_mfu_assert_dump_notif, %struct.iwl_mfu_assert_dump_notif* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load %struct.iwl_mfu_assert_dump_notif*, %struct.iwl_mfu_assert_dump_notif** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_mfu_assert_dump_notif, %struct.iwl_mfu_assert_dump_notif* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load %struct.iwl_mfu_assert_dump_notif*, %struct.iwl_mfu_assert_dump_notif** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_mfu_assert_dump_notif, %struct.iwl_mfu_assert_dump_notif* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = load %struct.iwl_mfu_assert_dump_notif*, %struct.iwl_mfu_assert_dump_notif** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_mfu_assert_dump_notif, %struct.iwl_mfu_assert_dump_notif* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = call i32 @IWL_INFO(%struct.iwl_mvm* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31, %2
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %45 = load %struct.iwl_mfu_assert_dump_notif*, %struct.iwl_mfu_assert_dump_notif** %6, align 8
  %46 = getelementptr inbounds %struct.iwl_mfu_assert_dump_notif, %struct.iwl_mfu_assert_dump_notif* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @le16_to_cpu(i64 %47)
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %58)
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %39

63:                                               ; preds = %39
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_INFO(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
