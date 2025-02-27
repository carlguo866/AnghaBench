; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_colors_remove_id.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_colors_remove_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colors = type { i32, i32* }
%struct.id_color = type { i64 }

@NO_INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.colors*, i8*)* @colors_remove_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @colors_remove_id(%struct.colors* %0, i8* %1) #0 {
  %3 = alloca %struct.colors*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.id_color*, align 8
  %6 = alloca i8**, align 8
  store %struct.colors* %0, %struct.colors** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.id_color* @id_color_new(i8* %7, i32 0)
  store %struct.id_color* %8, %struct.id_color** %5, align 8
  %9 = load %struct.colors*, %struct.colors** %3, align 8
  %10 = getelementptr inbounds %struct.colors, %struct.colors* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.id_color*, %struct.id_color** %5, align 8
  %13 = load i32, i32* @NO_INSERT, align 4
  %14 = call i8** @htab_find_slot(i32 %11, %struct.id_color* %12, i32 %13)
  store i8** %14, i8*** %6, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load %struct.colors*, %struct.colors** %3, align 8
  %23 = getelementptr inbounds %struct.colors, %struct.colors* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.id_color*
  %28 = getelementptr inbounds %struct.id_color, %struct.id_color* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.colors*, %struct.colors** %3, align 8
  %34 = getelementptr inbounds %struct.colors, %struct.colors* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = call i32 @htab_clear_slot(i32 %35, i8** %36)
  br label %38

38:                                               ; preds = %21, %17, %2
  %39 = load %struct.id_color*, %struct.id_color** %5, align 8
  %40 = call i32 @id_color_delete(%struct.id_color* %39)
  ret void
}

declare dso_local %struct.id_color* @id_color_new(i8*, i32) #1

declare dso_local i8** @htab_find_slot(i32, %struct.id_color*, i32) #1

declare dso_local i32 @htab_clear_slot(i32, i8**) #1

declare dso_local i32 @id_color_delete(%struct.id_color*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
