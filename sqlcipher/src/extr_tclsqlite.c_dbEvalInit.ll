; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_dbEvalInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_dbEvalInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*, i32*, i32)* @dbEvalInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbEvalInit(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 40)
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i32* %13, i32** %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @Tcl_GetString(i32* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @Tcl_IncrRefCount(i32* %23)
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @Tcl_IncrRefCount(i32* %31)
  br label %33

33:                                               ; preds = %27, %5
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @Tcl_GetString(i32*) #1

declare dso_local i32 @Tcl_IncrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
