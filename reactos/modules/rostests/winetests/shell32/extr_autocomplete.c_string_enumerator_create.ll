; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_autocomplete.c_string_enumerator_create.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_autocomplete.c_string_enumerator_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_enumerator = type { i32, i32, %struct.TYPE_3__, i64, i32**, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@string_enumerator_vtbl = common dso_local global i32 0, align 4
@aclist_vtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32**, i32)* @string_enumerator_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_enumerator_create(i8** %0, i32** %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.string_enumerator*, align 8
  store i8** %0, i8*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call %struct.string_enumerator* @heap_alloc_zero(i32 40)
  store %struct.string_enumerator* %8, %struct.string_enumerator** %7, align 8
  %9 = load %struct.string_enumerator*, %struct.string_enumerator** %7, align 8
  %10 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32* @string_enumerator_vtbl, i32** %11, align 8
  %12 = load %struct.string_enumerator*, %struct.string_enumerator** %7, align 8
  %13 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32* @aclist_vtbl, i32** %14, align 8
  %15 = load %struct.string_enumerator*, %struct.string_enumerator** %7, align 8
  %16 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32**, i32*** %5, align 8
  %18 = load %struct.string_enumerator*, %struct.string_enumerator** %7, align 8
  %19 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %18, i32 0, i32 4
  store i32** %17, i32*** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.string_enumerator*, %struct.string_enumerator** %7, align 8
  %22 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.string_enumerator*, %struct.string_enumerator** %7, align 8
  %24 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.string_enumerator*, %struct.string_enumerator** %7, align 8
  %26 = getelementptr inbounds %struct.string_enumerator, %struct.string_enumerator* %25, i32 0, i32 2
  %27 = bitcast %struct.TYPE_3__* %26 to i8*
  %28 = load i8**, i8*** %4, align 8
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* @S_OK, align 4
  ret i32 %29
}

declare dso_local %struct.string_enumerator* @heap_alloc_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
