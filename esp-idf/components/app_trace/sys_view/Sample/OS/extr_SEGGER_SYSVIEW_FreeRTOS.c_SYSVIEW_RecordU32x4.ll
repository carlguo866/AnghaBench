; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/Sample/OS/extr_SEGGER_SYSVIEW_FreeRTOS.c_SYSVIEW_RecordU32x4.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/Sample/OS/extr_SEGGER_SYSVIEW_FreeRTOS.c_SYSVIEW_RecordU32x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEGGER_SYSVIEW_INFO_SIZE = common dso_local global i32 0, align 4
@SEGGER_SYSVIEW_QUANTA_U32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYSVIEW_RecordU32x4(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @SEGGER_SYSVIEW_INFO_SIZE, align 4
  %15 = load i32, i32* @SEGGER_SYSVIEW_QUANTA_U32, align 4
  %16 = mul nsw i32 4, %15
  %17 = add nsw i32 %14, %16
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = call i32* @SEGGER_SYSVIEW_PREPARE_PACKET(i32* %20)
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32* @SEGGER_SYSVIEW_EncodeU32(i32* %22, i32 %23)
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32* @SEGGER_SYSVIEW_EncodeU32(i32* %25, i32 %26)
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32* @SEGGER_SYSVIEW_EncodeU32(i32* %28, i32 %29)
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32* @SEGGER_SYSVIEW_EncodeU32(i32* %31, i32 %32)
  store i32* %33, i32** %13, align 8
  %34 = getelementptr inbounds i32, i32* %20, i64 0
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @SEGGER_SYSVIEW_SendPacket(i32* %34, i32* %35, i32 %36)
  %38 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %38)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @SEGGER_SYSVIEW_PREPARE_PACKET(i32*) #2

declare dso_local i32* @SEGGER_SYSVIEW_EncodeU32(i32*, i32) #2

declare dso_local i32 @SEGGER_SYSVIEW_SendPacket(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
