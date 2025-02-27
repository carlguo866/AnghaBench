; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adbhid.c_adbhid_kbd_capslock_remember.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adbhid.c_adbhid_kbd_capslock_remember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adbhid = type { i64, i32 }

@adbhid = common dso_local global %struct.adbhid** null, align 8
@ADB_KEYBOARD = common dso_local global i64 0, align 8
@FLAG_CAPSLOCK_TRANSLATE = common dso_local global i32 0, align 4
@FLAG_CAPSLOCK_IGNORE_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @adbhid_kbd_capslock_remember to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adbhid_kbd_capslock_remember() #0 {
  %1 = alloca %struct.adbhid*, align 8
  %2 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  br label %3

3:                                                ; preds = %35, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 16
  br i1 %5, label %6, label %38

6:                                                ; preds = %3
  %7 = load %struct.adbhid**, %struct.adbhid*** @adbhid, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.adbhid*, %struct.adbhid** %7, i64 %9
  %11 = load %struct.adbhid*, %struct.adbhid** %10, align 8
  store %struct.adbhid* %11, %struct.adbhid** %1, align 8
  %12 = load %struct.adbhid*, %struct.adbhid** %1, align 8
  %13 = icmp ne %struct.adbhid* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %6
  %15 = load %struct.adbhid*, %struct.adbhid** %1, align 8
  %16 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ADB_KEYBOARD, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.adbhid*, %struct.adbhid** %1, align 8
  %22 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FLAG_CAPSLOCK_TRANSLATE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* @FLAG_CAPSLOCK_IGNORE_NEXT, align 4
  %29 = load %struct.adbhid*, %struct.adbhid** %1, align 8
  %30 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %20
  br label %34

34:                                               ; preds = %33, %14, %6
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %3

38:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
