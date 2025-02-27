; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_kernel_get_module_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_kernel_get_module_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.maps = type { i32 }

@host_machine = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.map* (i8*)* @kernel_get_module_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.map* @kernel_get_module_map(i8* %0) #0 {
  %2 = alloca %struct.map*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.maps*, align 8
  %5 = alloca %struct.map*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @host_machine, align 4
  %7 = call %struct.maps* @machine__kernel_maps(i32 %6)
  store %struct.maps* %7, %struct.maps** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strchr(i8* %11, i8 signext 47)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = call %struct.map* @dso__new_map(i8* %15)
  store %struct.map* %16, %struct.map** %2, align 8
  br label %68

17:                                               ; preds = %10, %1
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @host_machine, align 4
  %22 = call %struct.map* @machine__kernel_map(i32 %21)
  store %struct.map* %22, %struct.map** %5, align 8
  %23 = load %struct.map*, %struct.map** %5, align 8
  %24 = call %struct.map* @map__get(%struct.map* %23)
  store %struct.map* %24, %struct.map** %2, align 8
  br label %68

25:                                               ; preds = %17
  %26 = load %struct.maps*, %struct.maps** %4, align 8
  %27 = call %struct.map* @maps__first(%struct.maps* %26)
  store %struct.map* %27, %struct.map** %5, align 8
  br label %28

28:                                               ; preds = %64, %25
  %29 = load %struct.map*, %struct.map** %5, align 8
  %30 = icmp ne %struct.map* %29, null
  br i1 %30, label %31, label %67

31:                                               ; preds = %28
  %32 = load %struct.map*, %struct.map** %5, align 8
  %33 = getelementptr inbounds %struct.map, %struct.map* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = load i8*, i8** %3, align 8
  %39 = load %struct.map*, %struct.map** %5, align 8
  %40 = getelementptr inbounds %struct.map, %struct.map* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 2
  %45 = call i64 @strncmp(i64 %37, i8* %38, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %31
  %48 = load i8*, i8** %3, align 8
  %49 = load %struct.map*, %struct.map** %5, align 8
  %50 = getelementptr inbounds %struct.map, %struct.map* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %48, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load %struct.map*, %struct.map** %5, align 8
  %62 = call %struct.map* @map__get(%struct.map* %61)
  store %struct.map* %62, %struct.map** %2, align 8
  br label %68

63:                                               ; preds = %47, %31
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.map*, %struct.map** %5, align 8
  %66 = call %struct.map* @map__next(%struct.map* %65)
  store %struct.map* %66, %struct.map** %5, align 8
  br label %28

67:                                               ; preds = %28
  store %struct.map* null, %struct.map** %2, align 8
  br label %68

68:                                               ; preds = %67, %60, %20, %14
  %69 = load %struct.map*, %struct.map** %2, align 8
  ret %struct.map* %69
}

declare dso_local %struct.maps* @machine__kernel_maps(i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local %struct.map* @dso__new_map(i8*) #1

declare dso_local %struct.map* @machine__kernel_map(i32) #1

declare dso_local %struct.map* @map__get(%struct.map*) #1

declare dso_local %struct.map* @maps__first(%struct.maps*) #1

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local %struct.map* @map__next(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
