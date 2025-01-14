; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iores_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iores_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_erom_io = type { i32, i32, i32, i32 }
%struct.bhnd_erom_iores = type { i32, i32, %struct.bhnd_erom_io, i32*, i32 }

@M_BHND = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@bhnd_erom_iores_map = common dso_local global i32 0, align 4
@bhnd_erom_iores_tell = common dso_local global i32 0, align 4
@bhnd_erom_iores_read = common dso_local global i32 0, align 4
@bhnd_erom_iores_fini = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhnd_erom_io* @bhnd_erom_iores_new(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_erom_iores*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @M_BHND, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.bhnd_erom_iores* @malloc(i32 40, i32 %6, i32 %9)
  store %struct.bhnd_erom_iores* %10, %struct.bhnd_erom_iores** %5, align 8
  %11 = load i32, i32* @bhnd_erom_iores_map, align 4
  %12 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %5, align 8
  %13 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.bhnd_erom_io, %struct.bhnd_erom_io* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @bhnd_erom_iores_tell, align 4
  %16 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %5, align 8
  %17 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.bhnd_erom_io, %struct.bhnd_erom_io* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @bhnd_erom_iores_read, align 4
  %20 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %5, align 8
  %21 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.bhnd_erom_io, %struct.bhnd_erom_io* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @bhnd_erom_iores_fini, align 4
  %24 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %5, align 8
  %25 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.bhnd_erom_io, %struct.bhnd_erom_io* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %5, align 8
  %29 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %5, align 8
  %32 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %5, align 8
  %34 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %5, align 8
  %36 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 4
  %37 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %5, align 8
  %38 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %37, i32 0, i32 2
  ret %struct.bhnd_erom_io* %38
}

declare dso_local %struct.bhnd_erom_iores* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
