; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_object_init_pt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_object_init_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@OBJT_DEVICE = common dso_local global i64 0, align 8
@OBJT_SG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"pmap_object_init_pt: non-device object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_object_init_pt(i32 %0, i32 %1, %struct.TYPE_4__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %12 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_4__* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OBJT_DEVICE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OBJT_SG, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %18, %5
  %25 = phi i1 [ true, %5 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_4__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
