; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_unquote_quoted_pair.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_unquote_quoted_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @unquote_quoted_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unquote_quoted_pair(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca %struct.strbuf, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @strbuf_init(%struct.strbuf* %3, i32 %11)
  br label %13

13:                                               ; preds = %27, %24, %21, %1
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  %16 = load i8, i8* %14, align 1
  %17 = sext i8 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %27 [
    i32 34, label %21
    i32 40, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @unquote_quoted_string(%struct.strbuf* %3, i8* %22)
  store i8* %23, i8** %4, align 8
  br label %13

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @unquote_comment(%struct.strbuf* %3, i8* %25)
  store i8* %26, i8** %4, align 8
  br label %13

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @strbuf_addch(%struct.strbuf* %3, i32 %28)
  br label %13

30:                                               ; preds = %13
  %31 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %32 = call i32 @strbuf_swap(%struct.strbuf* %3, %struct.strbuf* %31)
  %33 = call i32 @strbuf_release(%struct.strbuf* %3)
  ret void
}

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i8* @unquote_quoted_string(%struct.strbuf*, i8*) #1

declare dso_local i8* @unquote_comment(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_swap(%struct.strbuf*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
