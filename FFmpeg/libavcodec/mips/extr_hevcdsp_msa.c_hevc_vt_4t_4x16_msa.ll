; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_4x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_4x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_4t_4x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_4t_4x16_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = sext i32 %47 to i64
  %50 = sub i64 0, %49
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %7, align 8
  %52 = call i32 @__msa_ldi_h(i32 128)
  store i32 %52, i32* %46, align 4
  %53 = load i32, i32* %46, align 4
  %54 = shl i32 %53, 6
  store i32 %54, i32* %46, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @LD_SH(i32* %55)
  store i32 %56, i32* %45, align 4
  %57 = load i32, i32* %45, align 4
  %58 = load i32, i32* %43, align 4
  %59 = load i32, i32* %44, align 4
  %60 = call i32 @SPLATI_H2_SH(i32 %57, i32 0, i32 1, i32 %58, i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %15, align 8
  %66 = call i32 @LD_SB3(i32* %61, i32 %62, i64 %63, i64 %64, i64 %65)
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 3, %67
  %69 = load i32*, i32** %7, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %7, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %24, align 8
  %77 = load i64, i64* %29, align 8
  %78 = call i32 @ILVR_B2_SB(i64 %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77)
  %79 = load i64, i64* %29, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i64, i64* %24, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i64 @__msa_ilvr_d(i32 %80, i32 %82)
  store i64 %83, i64* %34, align 8
  %84 = load i64, i64* %34, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i64 @__msa_xori_b(i32 %85, i32 128)
  store i64 %86, i64* %34, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %20, align 8
  %94 = load i64, i64* %21, align 8
  %95 = load i64, i64* %22, align 8
  %96 = load i64, i64* %23, align 8
  %97 = call i32 @LD_SB8(i32* %87, i32 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96)
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 8, %98
  %100 = load i32*, i32** %7, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %7, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* %18, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* %19, align 8
  %110 = load i64, i64* %18, align 8
  %111 = load i64, i64* %25, align 8
  %112 = load i64, i64* %30, align 8
  %113 = load i64, i64* %26, align 8
  %114 = load i64, i64* %31, align 8
  %115 = call i32 @ILVR_B4_SB(i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114)
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* %19, align 8
  %118 = load i64, i64* %21, align 8
  %119 = load i64, i64* %20, align 8
  %120 = load i64, i64* %22, align 8
  %121 = load i64, i64* %21, align 8
  %122 = load i64, i64* %23, align 8
  %123 = load i64, i64* %22, align 8
  %124 = load i64, i64* %27, align 8
  %125 = load i64, i64* %32, align 8
  %126 = load i64, i64* %28, align 8
  %127 = load i64, i64* %33, align 8
  %128 = call i32 @ILVR_B4_SB(i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127)
  %129 = load i64, i64* %30, align 8
  %130 = load i64, i64* %25, align 8
  %131 = load i64, i64* %31, align 8
  %132 = load i64, i64* %26, align 8
  %133 = load i64, i64* %32, align 8
  %134 = load i64, i64* %27, align 8
  %135 = load i64, i64* %33, align 8
  %136 = load i64, i64* %28, align 8
  %137 = load i64, i64* %35, align 8
  %138 = load i64, i64* %36, align 8
  %139 = load i64, i64* %37, align 8
  %140 = load i64, i64* %38, align 8
  %141 = call i32 @ILVR_D4_SB(i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  %142 = load i64, i64* %35, align 8
  %143 = load i64, i64* %36, align 8
  %144 = load i64, i64* %37, align 8
  %145 = load i64, i64* %38, align 8
  %146 = call i32 @XORI_B4_128_SB(i64 %142, i64 %143, i64 %144, i64 %145)
  %147 = load i32, i32* %46, align 4
  store i32 %147, i32* %39, align 4
  %148 = load i32, i32* %46, align 4
  store i32 %148, i32* %40, align 4
  %149 = load i32, i32* %46, align 4
  store i32 %149, i32* %41, align 4
  %150 = load i32, i32* %46, align 4
  store i32 %150, i32* %42, align 4
  %151 = load i64, i64* %34, align 8
  %152 = load i64, i64* %35, align 8
  %153 = load i32, i32* %43, align 4
  %154 = load i32, i32* %44, align 4
  %155 = load i32, i32* %39, align 4
  %156 = load i32, i32* %39, align 4
  %157 = call i32 @DPADD_SB2_SH(i64 %151, i64 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load i64, i64* %35, align 8
  %159 = load i64, i64* %36, align 8
  %160 = load i32, i32* %43, align 4
  %161 = load i32, i32* %44, align 4
  %162 = load i32, i32* %40, align 4
  %163 = load i32, i32* %40, align 4
  %164 = call i32 @DPADD_SB2_SH(i64 %158, i64 %159, i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = load i64, i64* %36, align 8
  %166 = load i64, i64* %37, align 8
  %167 = load i32, i32* %43, align 4
  %168 = load i32, i32* %44, align 4
  %169 = load i32, i32* %41, align 4
  %170 = load i32, i32* %41, align 4
  %171 = call i32 @DPADD_SB2_SH(i64 %165, i64 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  %172 = load i64, i64* %37, align 8
  %173 = load i64, i64* %38, align 8
  %174 = load i32, i32* %43, align 4
  %175 = load i32, i32* %44, align 4
  %176 = load i32, i32* %42, align 4
  %177 = load i32, i32* %42, align 4
  %178 = call i32 @DPADD_SB2_SH(i64 %172, i64 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %39, align 4
  %180 = load i32, i32* %40, align 4
  %181 = load i32, i32* %41, align 4
  %182 = load i32, i32* %42, align 4
  %183 = load i32*, i32** %9, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @ST_D8(i32 %179, i32 %180, i32 %181, i32 %182, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %183, i32 %184)
  %186 = load i32, i32* %10, align 4
  %187 = mul nsw i32 8, %186
  %188 = load i32*, i32** %9, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32* %190, i32** %9, align 8
  %191 = load i64, i64* %23, align 8
  store i64 %191, i64* %15, align 8
  %192 = load i64, i64* %38, align 8
  store i64 %192, i64* %34, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load i64, i64* %16, align 8
  %196 = load i64, i64* %17, align 8
  %197 = load i64, i64* %18, align 8
  %198 = load i64, i64* %19, align 8
  %199 = load i64, i64* %20, align 8
  %200 = load i64, i64* %21, align 8
  %201 = load i64, i64* %22, align 8
  %202 = load i64, i64* %23, align 8
  %203 = call i32 @LD_SB8(i32* %193, i32 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202)
  %204 = load i32, i32* %8, align 4
  %205 = mul nsw i32 8, %204
  %206 = load i32*, i32** %7, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32* %208, i32** %7, align 8
  %209 = load i64, i64* %16, align 8
  %210 = load i64, i64* %15, align 8
  %211 = load i64, i64* %17, align 8
  %212 = load i64, i64* %16, align 8
  %213 = load i64, i64* %18, align 8
  %214 = load i64, i64* %17, align 8
  %215 = load i64, i64* %19, align 8
  %216 = load i64, i64* %18, align 8
  %217 = load i64, i64* %25, align 8
  %218 = load i64, i64* %30, align 8
  %219 = load i64, i64* %26, align 8
  %220 = load i64, i64* %31, align 8
  %221 = call i32 @ILVR_B4_SB(i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220)
  %222 = load i64, i64* %20, align 8
  %223 = load i64, i64* %19, align 8
  %224 = load i64, i64* %21, align 8
  %225 = load i64, i64* %20, align 8
  %226 = load i64, i64* %22, align 8
  %227 = load i64, i64* %21, align 8
  %228 = load i64, i64* %23, align 8
  %229 = load i64, i64* %22, align 8
  %230 = load i64, i64* %27, align 8
  %231 = load i64, i64* %32, align 8
  %232 = load i64, i64* %28, align 8
  %233 = load i64, i64* %33, align 8
  %234 = call i32 @ILVR_B4_SB(i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233)
  %235 = load i64, i64* %30, align 8
  %236 = load i64, i64* %25, align 8
  %237 = load i64, i64* %31, align 8
  %238 = load i64, i64* %26, align 8
  %239 = load i64, i64* %32, align 8
  %240 = load i64, i64* %27, align 8
  %241 = load i64, i64* %33, align 8
  %242 = load i64, i64* %28, align 8
  %243 = load i64, i64* %35, align 8
  %244 = load i64, i64* %36, align 8
  %245 = load i64, i64* %37, align 8
  %246 = load i64, i64* %38, align 8
  %247 = call i32 @ILVR_D4_SB(i64 %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244, i64 %245, i64 %246)
  %248 = load i64, i64* %35, align 8
  %249 = load i64, i64* %36, align 8
  %250 = load i64, i64* %37, align 8
  %251 = load i64, i64* %38, align 8
  %252 = call i32 @XORI_B4_128_SB(i64 %248, i64 %249, i64 %250, i64 %251)
  %253 = load i32, i32* %46, align 4
  store i32 %253, i32* %39, align 4
  %254 = load i32, i32* %46, align 4
  store i32 %254, i32* %40, align 4
  %255 = load i32, i32* %46, align 4
  store i32 %255, i32* %41, align 4
  %256 = load i32, i32* %46, align 4
  store i32 %256, i32* %42, align 4
  %257 = load i64, i64* %34, align 8
  %258 = load i64, i64* %35, align 8
  %259 = load i32, i32* %43, align 4
  %260 = load i32, i32* %44, align 4
  %261 = load i32, i32* %39, align 4
  %262 = load i32, i32* %39, align 4
  %263 = call i32 @DPADD_SB2_SH(i64 %257, i64 %258, i32 %259, i32 %260, i32 %261, i32 %262)
  %264 = load i64, i64* %35, align 8
  %265 = load i64, i64* %36, align 8
  %266 = load i32, i32* %43, align 4
  %267 = load i32, i32* %44, align 4
  %268 = load i32, i32* %40, align 4
  %269 = load i32, i32* %40, align 4
  %270 = call i32 @DPADD_SB2_SH(i64 %264, i64 %265, i32 %266, i32 %267, i32 %268, i32 %269)
  %271 = load i64, i64* %36, align 8
  %272 = load i64, i64* %37, align 8
  %273 = load i32, i32* %43, align 4
  %274 = load i32, i32* %44, align 4
  %275 = load i32, i32* %41, align 4
  %276 = load i32, i32* %41, align 4
  %277 = call i32 @DPADD_SB2_SH(i64 %271, i64 %272, i32 %273, i32 %274, i32 %275, i32 %276)
  %278 = load i64, i64* %37, align 8
  %279 = load i64, i64* %38, align 8
  %280 = load i32, i32* %43, align 4
  %281 = load i32, i32* %44, align 4
  %282 = load i32, i32* %42, align 4
  %283 = load i32, i32* %42, align 4
  %284 = call i32 @DPADD_SB2_SH(i64 %278, i64 %279, i32 %280, i32 %281, i32 %282, i32 %283)
  %285 = load i32, i32* %39, align 4
  %286 = load i32, i32* %40, align 4
  %287 = load i32, i32* %41, align 4
  %288 = load i32, i32* %42, align 4
  %289 = load i32*, i32** %9, align 8
  %290 = load i32, i32* %10, align 4
  %291 = call i32 @ST_D8(i32 %285, i32 %286, i32 %287, i32 %288, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %289, i32 %290)
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i64 @__msa_xori_b(i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
