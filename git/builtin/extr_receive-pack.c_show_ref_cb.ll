; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_show_ref_cb.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_show_ref_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.oidset = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c".have\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @show_ref_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_ref_cb(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.oidset*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.oidset*
  store %struct.oidset* %13, %struct.oidset** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @strip_namespace(i8* %14)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @ref_is_hidden(i8* %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %39

21:                                               ; preds = %4
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.oidset*, %struct.oidset** %10, align 8
  %26 = load %struct.object_id*, %struct.object_id** %7, align 8
  %27 = call i64 @oidset_insert(%struct.oidset* %25, %struct.object_id* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %39

30:                                               ; preds = %24
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %35

31:                                               ; preds = %21
  %32 = load %struct.oidset*, %struct.oidset** %10, align 8
  %33 = load %struct.object_id*, %struct.object_id** %7, align 8
  %34 = call i64 @oidset_insert(%struct.oidset* %32, %struct.object_id* %33)
  br label %35

35:                                               ; preds = %31, %30
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.object_id*, %struct.object_id** %7, align 8
  %38 = call i32 @show_ref(i8* %36, %struct.object_id* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %29, %20
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i8* @strip_namespace(i8*) #1

declare dso_local i64 @ref_is_hidden(i8*, i8*) #1

declare dso_local i64 @oidset_insert(%struct.oidset*, %struct.object_id*) #1

declare dso_local i32 @show_ref(i8*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
