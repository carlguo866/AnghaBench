; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_script_desc__findnew.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_script_desc__findnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.script_desc* (i8*)* @script_desc__findnew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.script_desc* @script_desc__findnew(i8* %0) #0 {
  %2 = alloca %struct.script_desc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.script_desc*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.script_desc* @script_desc__find(i8* %5)
  store %struct.script_desc* %6, %struct.script_desc** %4, align 8
  %7 = load %struct.script_desc*, %struct.script_desc** %4, align 8
  %8 = icmp ne %struct.script_desc* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.script_desc*, %struct.script_desc** %4, align 8
  store %struct.script_desc* %10, %struct.script_desc** %2, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.script_desc* @script_desc__new(i8* %12)
  store %struct.script_desc* %13, %struct.script_desc** %4, align 8
  %14 = load %struct.script_desc*, %struct.script_desc** %4, align 8
  %15 = icmp ne %struct.script_desc* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store %struct.script_desc* null, %struct.script_desc** %2, align 8
  br label %21

17:                                               ; preds = %11
  %18 = load %struct.script_desc*, %struct.script_desc** %4, align 8
  %19 = call i32 @script_desc__add(%struct.script_desc* %18)
  %20 = load %struct.script_desc*, %struct.script_desc** %4, align 8
  store %struct.script_desc* %20, %struct.script_desc** %2, align 8
  br label %21

21:                                               ; preds = %17, %16, %9
  %22 = load %struct.script_desc*, %struct.script_desc** %2, align 8
  ret %struct.script_desc* %22
}

declare dso_local %struct.script_desc* @script_desc__find(i8*) #1

declare dso_local %struct.script_desc* @script_desc__new(i8*) #1

declare dso_local i32 @script_desc__add(%struct.script_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
