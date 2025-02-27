; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_use.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netagent_wrapper = type { i32 }

@netagent_lock = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"netagent_assert: Requested netagent UUID is not registered\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netagent_use(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netagent_wrapper*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = call i32 @lck_rw_lock_exclusive(i32* @netagent_lock)
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.netagent_wrapper* @netagent_find_agent_with_uuid(i32 %9)
  store %struct.netagent_wrapper* %10, %struct.netagent_wrapper** %6, align 8
  %11 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %6, align 8
  %12 = icmp eq %struct.netagent_wrapper* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @LOG_ERR, align 4
  %15 = call i32 @NETAGENTLOG0(i32 %14, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOENT, align 4
  store i32 %16, i32* %5, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %6, align 8
  %19 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %6, align 8
  %22 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %17
  br label %31

31:                                               ; preds = %30, %13
  %32 = call i32 @lck_rw_done(i32* @netagent_lock)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local %struct.netagent_wrapper* @netagent_find_agent_with_uuid(i32) #1

declare dso_local i32 @NETAGENTLOG0(i32, i8*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
