; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_string.c_str_init_nofree.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_string.c_str_init_nofree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }

@NOFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RString* (%struct.RString*, i8*, i64)* @str_init_nofree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RString* @str_init_nofree(%struct.RString* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.RString*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.RString* %0, %struct.RString** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.RString*, %struct.RString** %4, align 8
  %9 = getelementptr inbounds %struct.RString, %struct.RString* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i8* %7, i8** %11, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.RString*, %struct.RString** %4, align 8
  %14 = getelementptr inbounds %struct.RString, %struct.RString* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i64 %12, i64* %16, align 8
  %17 = load %struct.RString*, %struct.RString** %4, align 8
  %18 = getelementptr inbounds %struct.RString, %struct.RString* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.RString*, %struct.RString** %4, align 8
  %23 = load i32, i32* @NOFREE, align 4
  %24 = call i32 @RSTR_SET_TYPE_FLAG(%struct.RString* %22, i32 %23)
  %25 = load %struct.RString*, %struct.RString** %4, align 8
  ret %struct.RString* %25
}

declare dso_local i32 @RSTR_SET_TYPE_FLAG(%struct.RString*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
