; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_strlist_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_strlist_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_strlist = type { %struct.config_strlist*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config_strlist* @cfg_strlist_find(%struct.config_strlist* %0, i8* %1) #0 {
  %3 = alloca %struct.config_strlist*, align 8
  %4 = alloca %struct.config_strlist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  store %struct.config_strlist* %0, %struct.config_strlist** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.config_strlist*, %struct.config_strlist** %4, align 8
  store %struct.config_strlist* %7, %struct.config_strlist** %6, align 8
  %8 = load %struct.config_strlist*, %struct.config_strlist** %4, align 8
  %9 = icmp ne %struct.config_strlist* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.config_strlist* null, %struct.config_strlist** %3, align 8
  br label %29

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %24, %11
  %13 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %14 = icmp ne %struct.config_strlist* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %17 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strcmp(i32 %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  store %struct.config_strlist* %23, %struct.config_strlist** %3, align 8
  br label %29

24:                                               ; preds = %15
  %25 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %26 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %25, i32 0, i32 0
  %27 = load %struct.config_strlist*, %struct.config_strlist** %26, align 8
  store %struct.config_strlist* %27, %struct.config_strlist** %6, align 8
  br label %12

28:                                               ; preds = %12
  store %struct.config_strlist* null, %struct.config_strlist** %3, align 8
  br label %29

29:                                               ; preds = %28, %22, %10
  %30 = load %struct.config_strlist*, %struct.config_strlist** %3, align 8
  ret %struct.config_strlist* %30
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
