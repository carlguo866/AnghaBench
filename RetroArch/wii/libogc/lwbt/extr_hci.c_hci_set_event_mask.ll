; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_set_event_mask.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_set_event_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32, i64 }

@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_SET_EV_MASK_PLEN = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"hci_set_event_mask: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HCI_SET_EV_MASK_OCF = common dso_local global i32 0, align 4
@HCI_HC_BB_OGF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_set_event_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pbuf*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pbuf* null, %struct.pbuf** %5, align 8
  %6 = load i32, i32* @PBUF_RAW, align 4
  %7 = load i32, i32* @HCI_SET_EV_MASK_PLEN, align 4
  %8 = load i32, i32* @PBUF_RAM, align 4
  %9 = call %struct.pbuf* @btpbuf_alloc(i32 %6, i32 %7, i32 %8)
  store %struct.pbuf* %9, %struct.pbuf** %5, align 8
  %10 = icmp eq %struct.pbuf* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 @ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ERR_MEM, align 4
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %16 = load i32, i32* @HCI_SET_EV_MASK_OCF, align 4
  %17 = load i32, i32* @HCI_HC_BB_OGF, align 4
  %18 = load i32, i32* @HCI_SET_EV_MASK_PLEN, align 4
  %19 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %15, i32 %16, i32 %17, i32 %18)
  store %struct.pbuf* %19, %struct.pbuf** %5, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @htole64(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = call i32 @memcpy(i32* %26, i32* %4, i32 8)
  %28 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %29 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @physbusif_output(%struct.pbuf* %28, i32 %31)
  %33 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %34 = call i32 @btpbuf_free(%struct.pbuf* %33)
  %35 = load i32, i32* @ERR_OK, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %14, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local %struct.pbuf* @hci_cmd_ass(%struct.pbuf*, i32, i32, i32) #1

declare dso_local i32 @htole64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @physbusif_output(%struct.pbuf*, i32) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
