; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mptbl.c_mpt_generate_pci_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mptbl.c_mpt_generate_pci_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@MPCT_ENTRY_INT = common dso_local global i32 0, align 4
@INTENTRY_TYPE_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i8*)* @mpt_generate_pci_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_generate_pci_int(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_3__**, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_3__**
  store %struct.TYPE_3__** %16, %struct.TYPE_3__*** %13, align 8
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %13, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %14, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %20 = call i32 @memset(%struct.TYPE_3__* %19, i32 0, i32 24)
  %21 = load i32, i32* @MPCT_ENTRY_INT, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @INTENTRY_TYPE_INT, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 2
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, 1
  %34 = or i32 %31, %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 -1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 1
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %13, align 8
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %48, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
