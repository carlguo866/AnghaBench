; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_sync_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_sync_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.mddev*, %struct.md_rdev.0*)* }
%struct.mddev = type { i64, i32 (%struct.mddev*, %struct.md_rdev*)* }
%struct.md_rdev = type opaque
%struct.md_rdev.0 = type { i32 }

@super_types = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.md_rdev.0*)* @sync_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_super(%struct.mddev* %0, %struct.md_rdev.0* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev.0*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.md_rdev.0* %1, %struct.md_rdev.0** %4, align 8
  %5 = load %struct.mddev*, %struct.mddev** %3, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 1
  %7 = load i32 (%struct.mddev*, %struct.md_rdev*)*, i32 (%struct.mddev*, %struct.md_rdev*)** %6, align 8
  %8 = icmp ne i32 (%struct.mddev*, %struct.md_rdev*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.mddev*, %struct.mddev** %3, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 1
  %12 = load i32 (%struct.mddev*, %struct.md_rdev*)*, i32 (%struct.mddev*, %struct.md_rdev*)** %11, align 8
  %13 = load %struct.mddev*, %struct.mddev** %3, align 8
  %14 = load %struct.md_rdev.0*, %struct.md_rdev.0** %4, align 8
  %15 = bitcast %struct.md_rdev.0* %14 to %struct.md_rdev*
  %16 = call i32 %12(%struct.mddev* %13, %struct.md_rdev* %15)
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.mddev*, %struct.mddev** %3, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @super_types, align 8
  %22 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %21)
  %23 = icmp uge i64 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @super_types, align 8
  %27 = load %struct.mddev*, %struct.mddev** %3, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.mddev*, %struct.md_rdev.0*)*, i32 (%struct.mddev*, %struct.md_rdev.0*)** %31, align 8
  %33 = load %struct.mddev*, %struct.mddev** %3, align 8
  %34 = load %struct.md_rdev.0*, %struct.md_rdev.0** %4, align 8
  %35 = call i32 %32(%struct.mddev* %33, %struct.md_rdev.0* %34)
  br label %36

36:                                               ; preds = %17, %9
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
