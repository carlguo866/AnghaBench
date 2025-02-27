; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_find_ea_prefix.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_find_ea_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ea_name_index = type { i8*, i32 }

@ea_names = common dso_local global %struct.ea_name_index* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @find_ea_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_ea_prefix(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ea_name_index*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.ea_name_index*, %struct.ea_name_index** @ea_names, align 8
  store %struct.ea_name_index* %5, %struct.ea_name_index** %4, align 8
  br label %6

6:                                                ; preds = %22, %1
  %7 = load %struct.ea_name_index*, %struct.ea_name_index** %4, align 8
  %8 = getelementptr inbounds %struct.ea_name_index, %struct.ea_name_index* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = load %struct.ea_name_index*, %struct.ea_name_index** %4, align 8
  %13 = getelementptr inbounds %struct.ea_name_index, %struct.ea_name_index* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.ea_name_index*, %struct.ea_name_index** %4, align 8
  %19 = getelementptr inbounds %struct.ea_name_index, %struct.ea_name_index* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %2, align 8
  br label %26

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.ea_name_index*, %struct.ea_name_index** %4, align 8
  %24 = getelementptr inbounds %struct.ea_name_index, %struct.ea_name_index* %23, i32 1
  store %struct.ea_name_index* %24, %struct.ea_name_index** %4, align 8
  br label %6

25:                                               ; preds = %6
  store i8* null, i8** %2, align 8
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
