; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_parse_bytearray_subtype_getLength.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_parse_bytearray_subtype_getLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_parse_type = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ng_parse_type*, i32*, i32*)* @ng_parse_bytearray_subtype_getLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_parse_bytearray_subtype_getLength(%struct.ng_parse_type* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ng_parse_type*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32 (%struct.ng_parse_type*, i32*, i32*)**, align 8
  store %struct.ng_parse_type* %0, %struct.ng_parse_type** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ng_parse_type*, %struct.ng_parse_type** %4, align 8
  %9 = getelementptr inbounds %struct.ng_parse_type, %struct.ng_parse_type* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.ng_parse_type*, i32*, i32*)**
  %11 = load i32 (%struct.ng_parse_type*, i32*, i32*)*, i32 (%struct.ng_parse_type*, i32*, i32*)** %10, align 8
  %12 = bitcast i32 (%struct.ng_parse_type*, i32*, i32*)* %11 to i32 (%struct.ng_parse_type*, i32*, i32*)**
  store i32 (%struct.ng_parse_type*, i32*, i32*)** %12, i32 (%struct.ng_parse_type*, i32*, i32*)*** %7, align 8
  %13 = load i32 (%struct.ng_parse_type*, i32*, i32*)**, i32 (%struct.ng_parse_type*, i32*, i32*)*** %7, align 8
  %14 = load i32 (%struct.ng_parse_type*, i32*, i32*)*, i32 (%struct.ng_parse_type*, i32*, i32*)** %13, align 8
  %15 = load %struct.ng_parse_type*, %struct.ng_parse_type** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 %14(%struct.ng_parse_type* %15, i32* %16, i32* %17)
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
