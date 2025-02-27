; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhnd_bhndb.c_bhnd_bhndb_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhnd_bhndb.c_bhnd_bhndb_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s is not a child of %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @bhnd_bhndb_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_bhndb_setup_intr(i32* %0, i32* %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %21 = load i32*, i32** %11, align 8
  store i32* %21, i32** %18, align 8
  br label %22

22:                                               ; preds = %31, %8
  %23 = load i32*, i32** %18, align 8
  %24 = call i32* @device_get_parent(i32* %23)
  store i32* %24, i32** %19, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32*, i32** %19, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %33

31:                                               ; preds = %26
  %32 = load i32*, i32** %19, align 8
  store i32* %32, i32** %18, align 8
  br label %22

33:                                               ; preds = %30, %22
  %34 = load i32*, i32** %18, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @device_get_nameunit(i32* %37)
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @device_get_nameunit(i32* %39)
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @KASSERT(i32 %36, i8* %42)
  %44 = load i32*, i32** %10, align 8
  %45 = call i32* @device_get_parent(i32* %44)
  %46 = load i32*, i32** %18, align 8
  %47 = call i32 @BHNDB_ROUTE_INTERRUPTS(i32* %45, i32* %46)
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %20, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i32, i32* %20, align 4
  store i32 %51, i32* %9, align 4
  br label %62

52:                                               ; preds = %33
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.resource*, %struct.resource** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = load i8**, i8*** %17, align 8
  %61 = call i32 @bhnd_generic_setup_intr(i32* %53, i32* %54, %struct.resource* %55, i32 %56, i32* %57, i32* %58, i8* %59, i8** %60)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %52, %50
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i32 @BHNDB_ROUTE_INTERRUPTS(i32*, i32*) #1

declare dso_local i32 @bhnd_generic_setup_intr(i32*, i32*, %struct.resource*, i32, i32*, i32*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
