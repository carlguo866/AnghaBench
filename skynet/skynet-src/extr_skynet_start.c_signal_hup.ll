; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_start.c_signal_hup.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_start.c_signal_hup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_message = type { i64, i32*, i64, i64 }

@PTYPE_SYSTEM = common dso_local global i64 0, align 8
@MESSAGE_TYPE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"logger\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @signal_hup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_hup() #0 {
  %1 = alloca %struct.skynet_message, align 8
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %1, i32 0, i32 3
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %1, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %1, i32 0, i32 1
  store i32* null, i32** %5, align 8
  %6 = load i64, i64* @PTYPE_SYSTEM, align 8
  %7 = load i64, i64* @MESSAGE_TYPE_SHIFT, align 8
  %8 = shl i64 %6, %7
  %9 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %1, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = call i64 @skynet_handle_findname(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @skynet_context_push(i64 %14, %struct.skynet_message* %1)
  br label %16

16:                                               ; preds = %13, %0
  ret void
}

declare dso_local i64 @skynet_handle_findname(i8*) #1

declare dso_local i32 @skynet_context_push(i64, %struct.skynet_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
