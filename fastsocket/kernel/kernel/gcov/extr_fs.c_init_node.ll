; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_init_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_init_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { i32 }
%struct.gcov_node = type { i32, %struct.gcov_node*, %struct.gcov_info*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gcov_node*, %struct.gcov_info*, i8*, %struct.gcov_node*)* @init_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_node(%struct.gcov_node* %0, %struct.gcov_info* %1, i8* %2, %struct.gcov_node* %3) #0 {
  %5 = alloca %struct.gcov_node*, align 8
  %6 = alloca %struct.gcov_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gcov_node*, align 8
  store %struct.gcov_node* %0, %struct.gcov_node** %5, align 8
  store %struct.gcov_info* %1, %struct.gcov_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.gcov_node* %3, %struct.gcov_node** %8, align 8
  %9 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %10 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %9, i32 0, i32 5
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %13 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %12, i32 0, i32 4
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %16 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %15, i32 0, i32 3
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.gcov_info*, %struct.gcov_info** %6, align 8
  %19 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %20 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %19, i32 0, i32 2
  store %struct.gcov_info* %18, %struct.gcov_info** %20, align 8
  %21 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %22 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %23 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %22, i32 0, i32 1
  store %struct.gcov_node* %21, %struct.gcov_node** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %28 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strcpy(i32 %29, i8* %30)
  br label %32

32:                                               ; preds = %26, %4
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
