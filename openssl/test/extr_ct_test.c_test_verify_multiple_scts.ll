; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ct_test.c_test_verify_multiple_scts.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ct_test.c_test_verify_multiple_scts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32, i32, i32, i32 }

@fixture = common dso_local global %struct.TYPE_2__* null, align 8
@certs_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"embeddedSCTs3.pem\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"embeddedSCTs3_issuer.pem\00", align 1
@result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_verify_multiple_scts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_verify_multiple_scts() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @SETUP_CT_TEST_FIXTURE()
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %4 = icmp eq %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %22

6:                                                ; preds = %0
  %7 = load i32, i32* @certs_dir, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 3, i32* %15, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 3, i32* %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32 1, i32* %19, align 8
  %20 = call i32 (...) @EXECUTE_CT_TEST()
  %21 = load i32, i32* @result, align 4
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %6, %5
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @SETUP_CT_TEST_FIXTURE(...) #1

declare dso_local i32 @EXECUTE_CT_TEST(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
