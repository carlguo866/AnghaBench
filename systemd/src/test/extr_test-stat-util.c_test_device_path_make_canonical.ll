; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-stat-util.c_test_device_path_make_canonical.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-stat-util.c_test_device_path_make_canonical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/zero\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/full\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"/run/systemd/inaccessible/chr\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"/run/systemd/inaccessible/blk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_device_path_make_canonical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_device_path_make_canonical() #0 {
  %1 = call i32 @test_device_path_make_canonical_one(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @test_device_path_make_canonical_one(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @test_device_path_make_canonical_one(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @test_device_path_make_canonical_one(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @test_device_path_make_canonical_one(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @test_device_path_make_canonical_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i64 @is_device_node(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 @test_device_path_make_canonical_one(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 @test_device_path_make_canonical_one(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %0
  ret void
}

declare dso_local i32 @test_device_path_make_canonical_one(i8*) #1

declare dso_local i64 @is_device_node(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
