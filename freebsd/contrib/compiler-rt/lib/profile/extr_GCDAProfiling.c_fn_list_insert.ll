; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_GCDAProfiling.c_fn_list_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_GCDAProfiling.c_fn_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fn_list = type { %struct.fn_node*, %struct.fn_node* }
%struct.fn_node = type { %struct.fn_node*, i32, i32 }

@CURRENT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fn_list*, i32)* @fn_list_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_list_insert(%struct.fn_list* %0, i32 %1) #0 {
  %3 = alloca %struct.fn_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fn_node*, align 8
  store %struct.fn_list* %0, %struct.fn_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.fn_node* @malloc(i32 16)
  store %struct.fn_node* %6, %struct.fn_node** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.fn_node*, %struct.fn_node** %5, align 8
  %9 = getelementptr inbounds %struct.fn_node, %struct.fn_node* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.fn_node*, %struct.fn_node** %5, align 8
  %11 = getelementptr inbounds %struct.fn_node, %struct.fn_node* %10, i32 0, i32 0
  store %struct.fn_node* null, %struct.fn_node** %11, align 8
  %12 = load i32, i32* @CURRENT_ID, align 4
  %13 = load %struct.fn_node*, %struct.fn_node** %5, align 8
  %14 = getelementptr inbounds %struct.fn_node, %struct.fn_node* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.fn_list*, %struct.fn_list** %3, align 8
  %16 = getelementptr inbounds %struct.fn_list, %struct.fn_list* %15, i32 0, i32 1
  %17 = load %struct.fn_node*, %struct.fn_node** %16, align 8
  %18 = icmp ne %struct.fn_node* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.fn_node*, %struct.fn_node** %5, align 8
  %21 = load %struct.fn_list*, %struct.fn_list** %3, align 8
  %22 = getelementptr inbounds %struct.fn_list, %struct.fn_list* %21, i32 0, i32 0
  store %struct.fn_node* %20, %struct.fn_node** %22, align 8
  %23 = load %struct.fn_list*, %struct.fn_list** %3, align 8
  %24 = getelementptr inbounds %struct.fn_list, %struct.fn_list* %23, i32 0, i32 1
  store %struct.fn_node* %20, %struct.fn_node** %24, align 8
  br label %34

25:                                               ; preds = %2
  %26 = load %struct.fn_node*, %struct.fn_node** %5, align 8
  %27 = load %struct.fn_list*, %struct.fn_list** %3, align 8
  %28 = getelementptr inbounds %struct.fn_list, %struct.fn_list* %27, i32 0, i32 0
  %29 = load %struct.fn_node*, %struct.fn_node** %28, align 8
  %30 = getelementptr inbounds %struct.fn_node, %struct.fn_node* %29, i32 0, i32 0
  store %struct.fn_node* %26, %struct.fn_node** %30, align 8
  %31 = load %struct.fn_node*, %struct.fn_node** %5, align 8
  %32 = load %struct.fn_list*, %struct.fn_list** %3, align 8
  %33 = getelementptr inbounds %struct.fn_list, %struct.fn_list* %32, i32 0, i32 0
  store %struct.fn_node* %31, %struct.fn_node** %33, align 8
  br label %34

34:                                               ; preds = %25, %19
  ret void
}

declare dso_local %struct.fn_node* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
