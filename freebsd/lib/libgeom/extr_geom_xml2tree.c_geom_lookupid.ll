; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_xml2tree.c_geom_lookupid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_xml2tree.c_geom_lookupid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gident = type { i8* }
%struct.gmesh = type { %struct.gident* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gident* @geom_lookupid(%struct.gmesh* %0, i8* %1) #0 {
  %3 = alloca %struct.gident*, align 8
  %4 = alloca %struct.gmesh*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gident*, align 8
  store %struct.gmesh* %0, %struct.gmesh** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.gmesh*, %struct.gmesh** %4, align 8
  %8 = getelementptr inbounds %struct.gmesh, %struct.gmesh* %7, i32 0, i32 0
  %9 = load %struct.gident*, %struct.gident** %8, align 8
  store %struct.gident* %9, %struct.gident** %6, align 8
  br label %10

10:                                               ; preds = %24, %2
  %11 = load %struct.gident*, %struct.gident** %6, align 8
  %12 = getelementptr inbounds %struct.gident, %struct.gident* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load %struct.gident*, %struct.gident** %6, align 8
  %17 = getelementptr inbounds %struct.gident, %struct.gident* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.gident*, %struct.gident** %6, align 8
  store %struct.gident* %22, %struct.gident** %3, align 8
  br label %28

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.gident*, %struct.gident** %6, align 8
  %26 = getelementptr inbounds %struct.gident, %struct.gident* %25, i32 1
  store %struct.gident* %26, %struct.gident** %6, align 8
  br label %10

27:                                               ; preds = %10
  store %struct.gident* null, %struct.gident** %3, align 8
  br label %28

28:                                               ; preds = %27, %21
  %29 = load %struct.gident*, %struct.gident** %3, align 8
  ret %struct.gident* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
