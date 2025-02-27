; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetProcessing.c_test_TooShortLength.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetProcessing.c_test_TooShortLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PACKET_UNUSEABLE = common dso_local global i32 0, align 4
@testpkt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@testsock = common dso_local global i32 0, align 4
@LEN_PKT_NOMAC = common dso_local global i64 0, align 8
@MODE_SERVER = common dso_local global i32 0, align 4
@testspkt = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"UnitTest\00", align 1
@MODE_BROADCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_TooShortLength() #0 {
  %1 = load i32, i32* @PACKET_UNUSEABLE, align 4
  %2 = load i64, i64* @LEN_PKT_NOMAC, align 8
  %3 = sub nsw i64 %2, 1
  %4 = load i32, i32* @MODE_SERVER, align 4
  %5 = call i32 @process_pkt(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @testpkt, i32 0, i32 0), i32* @testsock, i64 %3, i32 %4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @testspkt, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @TEST_ASSERT_EQUAL(i32 %1, i32 %5)
  %7 = load i32, i32* @PACKET_UNUSEABLE, align 4
  %8 = load i64, i64* @LEN_PKT_NOMAC, align 8
  %9 = sub nsw i64 %8, 1
  %10 = load i32, i32* @MODE_BROADCAST, align 4
  %11 = call i32 @process_pkt(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @testpkt, i32 0, i32 0), i32* @testsock, i64 %9, i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @testspkt, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @TEST_ASSERT_EQUAL(i32 %7, i32 %11)
  ret void
}

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @process_pkt(i32*, i32*, i64, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
