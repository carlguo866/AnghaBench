; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iobus_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iobus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_erom_iobus = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32, i32 }

@bhnd_erom_iobus_map = common dso_local global i32 0, align 4
@bhnd_erom_iobus_tell = common dso_local global i32 0, align 4
@bhnd_erom_iobus_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_erom_iobus_init(%struct.bhnd_erom_iobus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bhnd_erom_iobus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bhnd_erom_iobus* %0, %struct.bhnd_erom_iobus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @bhnd_erom_iobus_map, align 4
  %12 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %6, align 8
  %13 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @bhnd_erom_iobus_tell, align 4
  %16 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %6, align 8
  %17 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @bhnd_erom_iobus_read, align 4
  %20 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %6, align 8
  %21 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %6, align 8
  %24 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %6, align 8
  %28 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %6, align 8
  %31 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %6, align 8
  %34 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %6, align 8
  %37 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %6, align 8
  %39 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
