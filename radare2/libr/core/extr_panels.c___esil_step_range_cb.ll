; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___esil_step_range_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___esil_step_range_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"start addr: \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" end addr: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__esil_step_range_cb(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %11 = call i32* @r_strbuf_new(i32* null)
  store i32* %11, i32** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @r_strbuf_append(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @r_strbuf_get(i32* %17)
  %19 = call i8* @__show_status_input(%struct.TYPE_6__* %16, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @r_strbuf_append(i32* %20, i8* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @r_strbuf_append(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @r_strbuf_get(i32* %26)
  %28 = call i8* @__show_status_input(%struct.TYPE_6__* %25, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @r_strbuf_free(i32* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @r_num_math(i32 %33, i8* %34)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @r_num_math(i32 %38, i8* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

45:                                               ; preds = %1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = call i32 @__esil_init(%struct.TYPE_6__* %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @__esil_step_to(%struct.TYPE_6__* %54, i64 %55)
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = bitcast i8* %60 to %struct.TYPE_6__*
  %62 = call i32 @__set_refresh_all(%struct.TYPE_6__* %61, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %45, %44
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32* @r_strbuf_new(i32*) #1

declare dso_local i32 @r_strbuf_append(i32*, i8*) #1

declare dso_local i8* @__show_status_input(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @r_strbuf_get(i32*) #1

declare dso_local i32 @r_strbuf_free(i32*) #1

declare dso_local i64 @r_num_math(i32, i8*) #1

declare dso_local i32 @__esil_init(%struct.TYPE_6__*) #1

declare dso_local i32 @__esil_step_to(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
