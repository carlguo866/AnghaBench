; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_channel = type { i32 }

@CHOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate channel %d (err=%ld)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rio_channel* (i32*)* @riocm_ch_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rio_channel* @riocm_ch_create(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.rio_channel*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.rio_channel* null, %struct.rio_channel** %3, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.rio_channel* @riocm_ch_alloc(i32 %5)
  store %struct.rio_channel* %6, %struct.rio_channel** %3, align 8
  %7 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %8 = call i64 @IS_ERR(%struct.rio_channel* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @CHOP, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %15 = call i32 @PTR_ERR(%struct.rio_channel* %14)
  %16 = call i32 @riocm_debug(i32 %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %19 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %2, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %17, %10
  %23 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  ret %struct.rio_channel* %23
}

declare dso_local %struct.rio_channel* @riocm_ch_alloc(i32) #1

declare dso_local i64 @IS_ERR(%struct.rio_channel*) #1

declare dso_local i32 @riocm_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.rio_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
