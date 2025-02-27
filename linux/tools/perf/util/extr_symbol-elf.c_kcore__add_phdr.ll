; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore__add_phdr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore__add_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcore = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PF_R = common dso_local global i32 0, align 4
@PF_W = common dso_local global i32 0, align 4
@PF_X = common dso_local global i32 0, align 4
@page_size = common dso_local global i32 0, align 4
@PT_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kcore*, i32, i32, i32, i32)* @kcore__add_phdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcore__add_phdr(%struct.kcore* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kcore*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 4
  store %struct.kcore* %0, %struct.kcore** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* @PF_R, align 4
  %15 = load i32, i32* @PF_W, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PF_X, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %20 = load i32, i32* @page_size, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 6
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 7
  %31 = load i32, i32* @PT_LOAD, align 4
  store i32 %31, i32* %30, align 4
  %32 = load %struct.kcore*, %struct.kcore** %7, align 8
  %33 = getelementptr inbounds %struct.kcore, %struct.kcore* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @gelf_update_phdr(i32 %34, i32 %35, %struct.TYPE_3__* %12)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %40

39:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @gelf_update_phdr(i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
