; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_setup_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_setup_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i32, i32, i32, i32, i32, i32, i64, i32*, i32 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"initcard\00", align 1
@DEV_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcs_card*)* @lcs_setup_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_setup_card(%struct.lcs_card* %0) #0 {
  %2 = alloca %struct.lcs_card*, align 8
  store %struct.lcs_card* %0, %struct.lcs_card** %2, align 8
  %3 = load i32, i32* @setup, align 4
  %4 = call i32 @LCS_DBF_TEXT(i32 2, i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @setup, align 4
  %6 = call i32 @LCS_DBF_HEX(i32 2, i32 %5, %struct.lcs_card** %2, i32 8)
  %7 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %8 = call i32 @lcs_setup_read(%struct.lcs_card* %7)
  %9 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %10 = call i32 @lcs_setup_write(%struct.lcs_card* %9)
  %11 = load i32, i32* @DEV_STATE_DOWN, align 4
  %12 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %13 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 8
  %14 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %15 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %14, i32 0, i32 7
  store i32* null, i32** %15, align 8
  %16 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %17 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %19 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %18, i32 0, i32 5
  %20 = call i32 @init_waitqueue_head(i32* %19)
  %21 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %22 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %21, i32 0, i32 4
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %25 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %24, i32 0, i32 3
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %28 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %31 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %30, i32 0, i32 0
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  ret void
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @LCS_DBF_HEX(i32, i32, %struct.lcs_card**, i32) #1

declare dso_local i32 @lcs_setup_read(%struct.lcs_card*) #1

declare dso_local i32 @lcs_setup_write(%struct.lcs_card*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
