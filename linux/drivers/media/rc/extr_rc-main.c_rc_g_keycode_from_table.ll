; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_g_keycode_from_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_g_keycode_from_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32, %struct.rc_map }
%struct.rc_map = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KEY_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: scancode 0x%04x keycode 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc_g_keycode_from_table(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 2
  store %struct.rc_map* %10, %struct.rc_map** %5, align 8
  %11 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %12 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %11, i32 0, i32 1
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ir_lookup_by_scancode(%struct.rc_map* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %20 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %25 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @KEY_RESERVED, align 4
  br label %34

34:                                               ; preds = %32, %23
  %35 = phi i32 [ %31, %23 ], [ %33, %32 ]
  store i32 %35, i32* %6, align 4
  %36 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %37 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %36, i32 0, i32 1
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @KEY_RESERVED, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %45 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %44, i32 0, i32 1
  %46 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %47 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %34
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ir_lookup_by_scancode(%struct.rc_map*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
