; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_parse_pack_header.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_parse_pack_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_header = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"eof before pack header was fully read\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"protocol error (pack signature mismatch detected)\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"protocol error (pack version unsupported)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"unknown error in parse_pack_header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pack_header*)* @parse_pack_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_pack_header(%struct.pack_header* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pack_header*, align 8
  store %struct.pack_header* %0, %struct.pack_header** %3, align 8
  %4 = load %struct.pack_header*, %struct.pack_header** %3, align 8
  %5 = call i32 @read_pack_header(i32 0, %struct.pack_header* %4)
  switch i32 %5, label %9 [
    i32 130, label %6
    i32 129, label %7
    i32 128, label %8
    i32 0, label %10
  ]

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %11

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %11

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %11

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6
  %12 = load i8*, i8** %2, align 8
  ret i8* %12
}

declare dso_local i32 @read_pack_header(i32, %struct.pack_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
