; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_parse_if_modified_since.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_parse_if_modified_since.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request_parser_helper = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@parse_if_modified_since.header_len = internal constant i64 29, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwan_request_parser_helper*)* @parse_if_modified_since to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_if_modified_since(%struct.lwan_request_parser_helper* %0) #0 {
  %2 = alloca %struct.lwan_request_parser_helper*, align 8
  %3 = alloca i32, align 4
  store %struct.lwan_request_parser_helper* %0, %struct.lwan_request_parser_helper** %2, align 8
  %4 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %2, align 8
  %5 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 29
  %10 = zext i1 %9 to i32
  %11 = call i64 @UNLIKELY(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %2, align 8
  %16 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @lwan_parse_rfc_time(i32 %19, i32* %3)
  %21 = icmp slt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @UNLIKELY(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %31

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.lwan_request_parser_helper*, %struct.lwan_request_parser_helper** %2, align 8
  %29 = getelementptr inbounds %struct.lwan_request_parser_helper, %struct.lwan_request_parser_helper* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  br label %31

31:                                               ; preds = %26, %25, %13
  ret void
}

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i64 @lwan_parse_rfc_time(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
