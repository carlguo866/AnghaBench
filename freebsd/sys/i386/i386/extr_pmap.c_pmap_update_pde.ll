; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_update_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_update_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@kernel_pmap = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32*, i32)* @pmap_update_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_update_pde(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kernel_pmap, align 8
  %11 = icmp eq %struct.TYPE_4__* %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @pmap_kenter_pde(i32 %13, i32 %14)
  br label %20

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @pde_store(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kernel_pmap, align 8
  %23 = icmp eq %struct.TYPE_4__* %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @CPU_EMPTY(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24, %20
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @pmap_update_pde_invalidate(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @pmap_kenter_pde(i32, i32) #1

declare dso_local i32 @pde_store(i32*, i32) #1

declare dso_local i32 @CPU_EMPTY(i32*) #1

declare dso_local i32 @pmap_update_pde_invalidate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
