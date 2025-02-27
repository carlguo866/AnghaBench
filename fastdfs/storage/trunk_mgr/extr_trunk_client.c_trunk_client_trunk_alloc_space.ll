; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/trunk_mgr/extr_trunk_client.c_trunk_client_trunk_alloc_space.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/trunk_mgr/extr_trunk_client.c_trunk_client_trunk_alloc_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_if_trunker_self = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"can't alloc trunk space\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trunk_client_trunk_alloc_space(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* @g_if_trunker_self, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @trunk_alloc_space(i32 %12, i32* %13)
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = call i32 @trunk_client_connect_trunk_server(i32* %7, i32** %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %15
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @trunk_client_trunk_do_alloc_space(i32* %21, i32 %22, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @tracker_close_connection_ex(i32* %25, i32 %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %20, %18, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @trunk_alloc_space(i32, i32*) #1

declare dso_local i32 @trunk_client_connect_trunk_server(i32*, i32**, i8*) #1

declare dso_local i32 @trunk_client_trunk_do_alloc_space(i32*, i32, i32*) #1

declare dso_local i32 @tracker_close_connection_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
