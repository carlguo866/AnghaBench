; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/test/bsm/extr_generate.c_generate_in_addr_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/test/bsm/extr_generate.c_generate_in_addr_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"192.168.100.15\00", align 1
@in_addr_token_addr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"au_to_in_addr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @generate_in_addr_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_in_addr_token(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @inet_addr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @in_addr_token_addr, i32 0, i32 0), align 4
  %7 = call i32* @au_to_in_addr(%struct.TYPE_3__* @in_addr_token_addr)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EX_UNAVAILABLE, align 4
  %12 = call i32 @err(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @write_token(i8* %14, i8* %15, i32* %16)
  ret void
}

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32* @au_to_in_addr(%struct.TYPE_3__*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @write_token(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
