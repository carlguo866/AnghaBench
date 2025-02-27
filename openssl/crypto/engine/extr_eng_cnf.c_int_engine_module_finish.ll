; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_cnf.c_int_engine_module_finish.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_cnf.c_int_engine_module_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initialized_engines = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @int_engine_module_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_engine_module_finish(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load i32*, i32** @initialized_engines, align 8
  %6 = call i32* @sk_ENGINE_pop(i32* %5)
  store i32* %6, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @ENGINE_finish(i32* %9)
  br label %4

11:                                               ; preds = %4
  %12 = load i32*, i32** @initialized_engines, align 8
  %13 = call i32 @sk_ENGINE_free(i32* %12)
  store i32* null, i32** @initialized_engines, align 8
  ret void
}

declare dso_local i32* @sk_ENGINE_pop(i32*) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local i32 @sk_ENGINE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
