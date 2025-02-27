; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_process_section_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_process_section_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reader = type { i32 }

@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"error reading section header '%s'\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"expected '%s', received '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_reader*, i8*, i32)* @process_section_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_section_header(%struct.packet_reader* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.packet_reader*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.packet_reader* %0, %struct.packet_reader** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %9 = call i64 @packet_reader_peek(%struct.packet_reader* %8)
  %10 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (i32, i8*, ...) @die(i32 %13, i8* %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %18 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strcmp(i32 %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %34 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @die(i32 %31, i8* %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %27
  %38 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %39 = call i32 @packet_reader_read(%struct.packet_reader* %38)
  br label %40

40:                                               ; preds = %37, %16
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i64 @packet_reader_peek(%struct.packet_reader*) #1

declare dso_local i32 @die(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @packet_reader_read(%struct.packet_reader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
