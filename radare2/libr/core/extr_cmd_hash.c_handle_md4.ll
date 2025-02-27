; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_hash.c_handle_md4.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_hash.c_handle_md4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_HASH_MD4 = common dso_local global i32 0, align 4
@R_HASH_SIZE_MD4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @handle_md4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_md4(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @R_HASH_MD4, align 4
  %9 = call i32* @r_hash_new(i32 1, i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32* @r_hash_do_md4(i32* %10, i32* %11, i32 %12)
  store i32* %13, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %25, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @R_HASH_SIZE_MD4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @r_cons_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %14

28:                                               ; preds = %14
  %29 = call i32 (...) @r_cons_newline()
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @r_hash_free(i32* %30)
  ret void
}

declare dso_local i32* @r_hash_new(i32, i32) #1

declare dso_local i32* @r_hash_do_md4(i32*, i32*, i32) #1

declare dso_local i32 @r_cons_printf(i8*, i32) #1

declare dso_local i32 @r_cons_newline(...) #1

declare dso_local i32 @r_hash_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
