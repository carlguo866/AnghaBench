; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_json_array_init.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_json_array_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i32*)* @json_array_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @json_array_init(i32* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call i64 @parson_malloc(i32 32)
  %6 = inttoptr i64 %5 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %21

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i32* %11, i32** %13, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i32** null, i32*** %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %2, align 8
  br label %21

21:                                               ; preds = %10, %9
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  ret %struct.TYPE_3__* %22
}

declare dso_local i64 @parson_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
