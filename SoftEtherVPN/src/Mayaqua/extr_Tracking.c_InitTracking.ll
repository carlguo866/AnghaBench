; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_InitTracking.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_InitTracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRACKING_NUM_ARRAY = common dso_local global i32 0, align 4
@hashlist = common dso_local global i32** null, align 8
@obj_id = common dso_local global i64 0, align 8
@obj_lock = common dso_local global i8* null, align 8
@obj_id_lock = common dso_local global i8* null, align 8
@cs_lock = common dso_local global i8* null, align 8
@do_not_get_callstack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitTracking() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @TRACKING_NUM_ARRAY, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 8, %4
  %6 = trunc i64 %5 to i32
  %7 = call i64 @OSMemoryAlloc(i32 %6)
  %8 = inttoptr i64 %7 to i32**
  store i32** %8, i32*** @hashlist, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %18, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @TRACKING_NUM_ARRAY, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32**, i32*** @hashlist, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %9

21:                                               ; preds = %9
  store i64 0, i64* @obj_id, align 8
  %22 = call i8* (...) @OSNewLock()
  store i8* %22, i8** @obj_lock, align 8
  %23 = call i8* (...) @OSNewLock()
  store i8* %23, i8** @obj_id_lock, align 8
  %24 = call i8* (...) @OSNewLock()
  store i8* %24, i8** @cs_lock, align 8
  %25 = call i32* (...) @GetCallStack()
  store i32* %25, i32** %2, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* @do_not_get_callstack, align 4
  br label %32

29:                                               ; preds = %21
  store i32 0, i32* @do_not_get_callstack, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @FreeCallStack(i32* %30)
  br label %32

32:                                               ; preds = %29, %28
  ret void
}

declare dso_local i64 @OSMemoryAlloc(i32) #1

declare dso_local i8* @OSNewLock(...) #1

declare dso_local i32* @GetCallStack(...) #1

declare dso_local i32 @FreeCallStack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
