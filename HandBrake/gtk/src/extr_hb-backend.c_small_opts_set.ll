; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_small_opts_set.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_small_opts_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"<small>%s</small>\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i8*, i8*)* @small_opts_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @small_opts_set(%struct.TYPE_6__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = icmp eq %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %4
  br label %77

24:                                               ; preds = %20
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @GHB_WIDGET(i32 %27, i32* %28)
  %30 = call i32* @GTK_COMBO_BOX(i32 %29)
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @gtk_combo_box_get_model(i32* %31)
  %33 = call i32* @GTK_LIST_STORE(i32 %32)
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @gtk_list_store_clear(i32* %34)
  store i64 0, i64* %12, align 8
  br label %36

36:                                               ; preds = %74, %24
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %36
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @gtk_list_store_append(i32* %43, i32* %10)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gettext(i32 %51)
  %53 = call i32* @g_strdup_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32* %53, i32** %13, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* @TRUE, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @gtk_list_store_set(i32* %54, i32* %10, i32 0, i32* %55, i32 1, i32 %56, i32 2, i32 %63, i32 3, i32 %70, i32 -1)
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @g_free(i32* %72)
  br label %74

74:                                               ; preds = %42
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %36

77:                                               ; preds = %23, %36
  ret void
}

declare dso_local i32* @GTK_COMBO_BOX(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i32*) #1

declare dso_local i32* @GTK_LIST_STORE(i32) #1

declare dso_local i32 @gtk_combo_box_get_model(i32*) #1

declare dso_local i32 @gtk_list_store_clear(i32*) #1

declare dso_local i32 @gtk_list_store_append(i32*, i32*) #1

declare dso_local i32* @g_strdup_printf(i8*, i32) #1

declare dso_local i32 @gettext(i32) #1

declare dso_local i32 @gtk_list_store_set(i32*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
