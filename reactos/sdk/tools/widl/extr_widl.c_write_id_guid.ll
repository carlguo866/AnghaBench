; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_widl.c_write_id_guid.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_widl.c_write_id_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [112 x i8] c"MIDL_DEFINE_GUID(%s, %s_%s, 0x%08x, 0x%04x, 0x%04x, 0x%02x,0x%02x, 0x%02x,0x%02x,0x%02x,0x%02x,0x%02x,0x%02x);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*, %struct.TYPE_3__*)* @write_id_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_id_guid(i32* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  br label %69

14:                                               ; preds = %5
  %15 = load i32*, i32** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 7
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @fprintf(i32* %15, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17, i8* %18, i32 %21, i32 %24, i32 %27, i32 %32, i32 %37, i32 %42, i32 %47, i32 %52, i32 %57, i32 %62, i32 %67)
  br label %69

69:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
